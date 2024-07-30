import 'package:get/get.dart';
// ignore: unused_import
import 'package:satua/app/modules/home/views/home_view.dart';
import 'package:satua/app/routes/app_pages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

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

  void login() {
    Get.toNamed(Routes.HOME);
  }

  void increment() => count.value++;
}
