import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:satua/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final usernameController = TextEditingController();
  final ageController = TextEditingController();
  final title = ''.obs;
  final age = ''.obs;
  final count = 10.obs;
  int num1 = 10;

  @override
  void onInit() {
    super.onInit();
    increment();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() {
    count.value++;
    num1++;
    print(num1);
  }

  void decrement() {
    count.value--;
  }

  void ambilNama() {
    title.value = usernameController.value.text;
    age.value = ageController.value.text;
  }

  void operNama() {
    Get.toNamed(Routes.DETAILS,
        parameters: {'name': title.value, 'age': age.value});
  }

  void goToStory() {
    Get.toNamed(Routes.DETAILS);
  }

  void goToStoryList() {
    Get.toNamed(Routes.STORY_LIST);
  }

  void goToTracker(){
    Get.toNamed(Routes.TRACKER);
  }
}
