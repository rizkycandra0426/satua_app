import 'package:get/get.dart';

class Story {
  final String heading;
  final String body;
  final List<String> categories;
  final String date;

  Story(
      {required this.heading,
      required this.body,
      required this.categories,
      required this.date});
}

class StoryListController extends GetxController {
  final stories = RxList<Story>([]); // Make the list observable
  final count = 0.obs;

  get goToResult => null;
  @override
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  @override
  void onInit() {
    super.onInit();
    // Fetch data from an API or local storage and populate the stories list
    // Example:
    stories.value = [
      Story(
        heading: 'Slaying the Ender Dragon',
        body:
            'It wasn\'t like any other usual days, the ender world felt a bit off, not that it was ever normal, but this time, it’s different. The usual spark in his eyes seemed different.',
        categories: ['Adventure', 'Sci-fi'],
        date: '26 February 2024',
      ),
      Story(
        heading: 'Dragon and Harpoon',
        body:
            'Leo loved his yellow harpoon. It was his best fishing toy ever!  One day, he went fishing in the big bathtub.  Suddenly, bubbles started popping everywhere! A big, shiny fish with scales like rainbows jumped out of the water. It was a DRAGONFISH!',
        categories: ['Adventure', 'Fantasy'],
        date: '26 February 2024',
      ),
      // ... Add more stories
    ];
  }
}
