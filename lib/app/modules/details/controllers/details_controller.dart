import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:satua/app/routes/app_pages.dart';

class DetailsController extends GetxController {
  final Map<String, dynamic> args = Get.parameters;
  final count = 0.obs;
  final title = ''.obs;
  final RxString selectedGender = 'male'.obs;
  final RxString selectedLang = 'english'.obs;
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final aboutController = TextEditingController();
  final neuroController = TextEditingController();

  final placeController = TextEditingController();
  final feelController = TextEditingController();
  final primaryValController = TextEditingController();
  final extraController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    // title.value = args['name'];
    print(title.value);
    print(args['age']);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void goToResult() {
    Get.toNamed(Routes.RESULT, parameters: {'userPrompt': generatePrompt()});
  }

  String generatePrompt() {
    final String thePrompt =
        'Make me children story with the title in first line. The name of the child is ${nameController.text}, aged ${ageController.text} with $selectedLang as the language. The story should be about ${aboutController.text}. Make sure to use the right pronouns as the gender is $selectedGender . The story is to take place in ${placeController.text}, the story should feel ${feelController.text}. the story should have ${primaryValController.text} as the primary values to make child learn. Add another detail like "${extraController.text}" (ignore if left blank). Add 3 reflective question at the end for the kid to reflect on the story. Special condition of the child includes ${neuroController.text}. Please ensure the story is appropriate to the childs condition.';
    return thePrompt;
  }
}
