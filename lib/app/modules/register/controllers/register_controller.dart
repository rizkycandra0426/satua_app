// ignore: unused_import
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:satua/app/routes/app_pages.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void register() {
    Get.toNamed(Routes.LOGIN);
  }

  void increment() => count.value++;
}
