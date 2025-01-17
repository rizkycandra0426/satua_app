import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:satua/app/core/theme_manager/assets_manager.dart';
import 'package:satua/app/core/theme_manager/text_style_manager.dart';
import 'package:satua/app/routes/app_pages.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Image.asset(
                          '${AssetManager.imagePath}/awan-kuning.png',
                          height: 113,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Email',
                              style: TextStyle(
                                  fontSize: 12.0, color: Color(0xFF666666))),
                          const SizedBox(
                              height: 8.0), // Gap between label and input
                          TextFormField(
                            decoration: InputDecoration(
                              labelStyle: const TextStyle(
                                  fontSize: 12.0,
                                  color: Color(
                                      0xFF666666)), // Font size and color for label
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(8.0), // Border radius
                                borderSide: const BorderSide(
                                    color: Color(0xFFE8E8E8),
                                    width: 1.0), // Border style
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(8.0), // Border radius
                                borderSide: const BorderSide(
                                    color: Color(0xFFE8E8E8),
                                    width:
                                        1.0), // Border style (use the same for focus)
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Password',
                              style: TextStyle(
                                  fontSize: 12.0, color: Color(0xFF666666))),
                          const SizedBox(
                              height: 8.0), // Gap between label and input
                          TextFormField(
                            decoration: InputDecoration(
                              labelStyle: const TextStyle(
                                  fontSize: 12.0,
                                  color: Color(
                                      0xFF666666)), // Font size and color for label
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(8.0), // Border radius
                                borderSide: const BorderSide(
                                    color: Color(0xFFE8E8E8),
                                    width: 1.0), // Border style
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(8.0), // Border radius
                                borderSide: const BorderSide(
                                    color: Color(0xFFE8E8E8),
                                    width:
                                        1.0), // Border style (use the same for focus)
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Display Name',
                              style: TextStyle(
                                  fontSize: 12.0, color: Color(0xFF666666))),
                          const SizedBox(
                              height: 8.0), // Gap between label and input
                          TextFormField(
                            decoration: InputDecoration(
                              labelStyle: const TextStyle(
                                  fontSize: 12.0,
                                  color: Color(
                                      0xFF666666)), // Font size and color for label
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(8.0), // Border radius
                                borderSide: const BorderSide(
                                    color: Color(0xFFE8E8E8),
                                    width: 1.0), // Border style
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(8.0), // Border radius
                                borderSide: const BorderSide(
                                    color: Color(0xFFE8E8E8),
                                    width:
                                        1.0), // Border style (use the same for focus)
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      ElevatedButton(
                        onPressed: controller.register,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFF00B567), // Your background color
                          textStyle: const TextStyle(
                              color: Color.fromARGB(
                                  255, 255, 255, 255)), // Text color
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(8.0), // Border radius
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 32.0),
                          // Makes the button as wide as the parent container:
                          minimumSize: const Size.fromHeight(
                              50), // Adjust height if needed
                        ),
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      InkWell(
                        onTap: () => Get.toNamed(Routes.LOGIN),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account?',
                                style: TextStyleManager.mediumGray()),
                            Text(
                              ' Login now!',
                              style: TextStyleManager.mediumGray(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                    ],
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Center(
                  child: Text(
                    "Copyright © 2024 Story.AI. All Rights Reserved.",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF666666)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
