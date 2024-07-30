import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart'; // Import the Lottie library

import '../controllers/loading_1_controller.dart';

class Loading1View extends GetView<Loading1Controller> {
  const Loading1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
      ),
      body: Center(
        // Keep Center for layout
        child: Lottie.network(
          'https://lottie.host/0c6b77b0-a0d2-442f-af85-3a09677a686c/lFO6j86VYU.json',
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
