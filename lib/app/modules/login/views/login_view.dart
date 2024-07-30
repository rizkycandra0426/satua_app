import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:satua/app/core/theme_manager/text_style_manager.dart';
import 'package:satua/app/routes/app_pages.dart';

import '../../../core/theme_manager/assets_manager.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
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
                          '${AssetManager.imagePath}/awan-orange.png',
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
                        height: 60,
                      ),
                      ElevatedButton(
                        onPressed: controller.login,
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
                          'Login',
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
                        onTap: () => Get.toNamed(Routes.REGISTER),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'No account?',
                              style: TextStyleManager.mediumGray(),
                            ),
                            Text(
                              ' Register now!',
                              style: TextStyleManager.mediumGray(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 110,
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

// TextFormField(
//                         decoration: InputDecoration(
//                           labelText: 'Email', // Replace with your actual label
//                           labelStyle: const TextStyle(
//                               fontSize: 12.0,
//                               color: Color(
//                                   0xFF666666)), // Font size and color for label
//                           enabledBorder: OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.circular(8.0), // Border radius
//                             borderSide: const BorderSide(
//                                 color: Color(0xFFE8E8E8),
//                                 width: 1.0), // Border style
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.circular(8.0), // Border radius
//                             borderSide: const BorderSide(
//                                 color: Color(0xFFE8E8E8),
//                                 width:
//                                     1.0), // Border style (use the same for focus)
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 15,
//                       ),
//                       TextFormField(
//                         decoration: InputDecoration(
//                           labelText:
//                               'Password', // Replace with your actual label
//                           labelStyle: const TextStyle(
//                               fontSize: 12.0,
//                               color: Color(
//                                   0xFF666666)), // Font size and color for label
//                           enabledBorder: OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.circular(8.0), // Border radius
//                             borderSide: const BorderSide(
//                                 color: Color(0xFFE8E8E8),
//                                 width: 1.0), // Border style
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.circular(8.0), // Border radius
//                             borderSide: const BorderSide(
//                                 color: Color(0xFFE8E8E8),
//                                 width:
//                                     1.0), // Border style (use the same for focus)
//                           ),
//                         ),
//                       ),
  // TextFormField(
                      //   decoration: const InputDecoration(
                      //     border: UnderlineInputBorder(),
                      //     labelText: 'Email',
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 18,
                      // ),
                      // TextFormField(
                      //   decoration: const InputDecoration(
                      //     border: UnderlineInputBorder(),
                      //     labelText: 'Password',
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 60,
                      // ),