import 'package:get/get.dart';

import '../controllers/loading_1_controller.dart';

class Loading1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Loading1Controller>(
      () => Loading1Controller(),
    );
  }
}
