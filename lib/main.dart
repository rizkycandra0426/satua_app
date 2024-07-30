import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  Gemini.init(
      apiKey: 'AIzaSyCl5A197OLh-KHStv4kWlVrv3Evp88gBj0', enableDebugging: true);
  runApp(
    DevicePreview(
      builder: (context) => GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    ),

    // GetMaterialApp(
    //   title: "Application",
    //   initialRoute: AppPages.INITIAL,
    //   getPages: AppPages.routes,
    // ),
  );
}
