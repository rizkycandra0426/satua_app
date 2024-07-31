import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:get/get.dart';
import 'package:satua/app/routes/app_pages.dart';

class ResultController extends GetxController {
  final gemini = Gemini.instance;
  final RxString result = ''.obs;
  final RxString title = ''.obs;
  bool load = true;
  final RxString userPrompt = ''.obs;

  // Daftar item sebagai RxList<Map>
  final RxList<Map<String, dynamic>> items = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    userPrompt.value = Get.parameters['userPrompt'] ?? '';
    print(userPrompt);
    generateStory(userPrompt.value).then((value) => result.value = value);
  }

  @override
  void onClose() {
    super.onClose();
  }

  void goToStoryList() {
    Get.toNamed(Routes.STORY_LIST, parameters: {});
  }

  Future<String> generateStory(String userPrompt) async {
    try {
      String content = '';
      final response = await gemini.text(userPrompt).then((value) {
        content = '${value?.content?.parts?.first.text}';
      }).catchError((e) => print(e));

      // Extract the title (assuming the title is the first line)
      title.value = content.split('\n')[0];

      // Extract the story content (assuming the rest is the story)
      final story = content.substring(title.value.length + 1).trim();

      // Initialize items if necessary
      items.addAll(_generateSampleItems()); // Example method to generate initial items

      return story;
    } catch (e) {
      if (e is GeminiException) {
        print(e);
      }
      return ''; // Handle errors and return an empty string
    }
  }

  // Method to check if all items are checked
  bool areAllItemsChecked() {
    return items.every((item) => item['isChecked'] as bool);
  }

  // Method to generate sample items (for demonstration purposes)
  List<Map<String, dynamic>> _generateSampleItems() {
    return [
      {'title': 'Sudah Selesai Membaca', 'isChecked': false},
     
    ];
  }

  // Method to toggle item checked state
  void toggleItemChecked(int index, bool value) {
    items[index]['isChecked'] = value;
    items.refresh();
  }
}
