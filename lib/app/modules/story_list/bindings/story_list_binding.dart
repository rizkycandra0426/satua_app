import 'package:get/get.dart';

import '../controllers/story_list_controller.dart';

class StoryListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoryListController>(
      () => StoryListController(),
    );
  }
}
