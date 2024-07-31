import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:satua/app/core/theme_manager/assets_manager.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            // Use an IconButton for tappable icons
            icon: const Icon(
                CupertinoIcons.ellipsis_vertical), // Choose your icon
            onPressed: () {
              // What happens when this icon is pressed
              controller.increment(); // Example using your controller
            },
          ),
        ],
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
                        height: 20,
                      ),
                      const Text(
                        'Hi Parents!',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      const Text(
                        'Let’s create wonderful bedtime stories together with Satua.',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF666666)),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      const Text(
                        'Explore',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.goToStory();
                        },
                        child: SizedBox(
                          height: 177,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            color: const Color(0xFF8FDEBC),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Row(
                                children: [
                                  const Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(24.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Create new Story',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 14,
                                          ),
                                          Text(
                                            'Powered by OpenAI’s creative mind, Satua helps you make the perfect bedtime story for your loved ones.',
                                            maxLines: 4,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    '${AssetManager.imagePath}/cacing-kuning.png',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),

                      ///
                      ///Read Existing Story Card
                      ///
                      GestureDetector(
                        onTap: () {
                          controller.goToStoryList();
                        },
                        child: SizedBox(
                          height: 177,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            color: const Color(0xFFFFF08A),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Row(
                                children: [
                                  const Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Read existing stories',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 14,
                                          ),
                                          Text(
                                            'Skip the hassle of making a new one, and jump right in to read past stories made by other parents!',
                                            maxLines: 4,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                      '${AssetManager.imagePath}/cacing-hijau.png'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      const Text(
                        'Parenting 101',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.goToStory();
                        },
                        child: SizedBox(   
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            color: const Color(0xFFFFABD8),
                            child: const Padding(
                              padding: EdgeInsets.all(0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(24.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Your kids are a reflection of yourself!',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 14,
                                          ),
                                          Text(
                                            "Always up for a challenge, Sukerti volunteered to save the day. Armed with a courage as big as his heart, he set off to find the dragon's lair. Along the way, ",
                                            style: TextStyle(fontSize: 16),
                                            maxLines: 4,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          controller.goToTracker();
                        },
                        child: SizedBox(
                          height: 177,
                          child:Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            color: const Color(0xFFBED7FC),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Row(
                                children: [
                                  const Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(24.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Progress Tracker',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 14,
                                          ),
                                          Text(
                                            'See how often you read. Let’s develop a good habit of reading stories everyday before bed!',
                                            maxLines: 4,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    '${AssetManager.imagePath}/kacang-merah.png',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Get to know us',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      const Text(
                        "Welcome to Satua, where dreams take flight and bedtime stories come alive! 🌙✨\n\nAt Satua, we believe in the magic of bedtime stories and the power of imagination. We're not just an app; we're your storytelling companion, here to whisk you away to enchanting worlds crafted with love and powered by cutting-edge AI.\n\nOur mission is simple: to transform bedtime into a magical adventure for children and parents alike. Satua, derived from the Indonesian word for 'story',  is more than just an app; it's a gateway to a universe where imagination knows no bounds.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF666666)),
                      ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     controller.ambilNama();
                      //     controller.operNama();
                      //   },
                      //   child: const Row(
                      //     children: [
                      //       Text('increment'),
                      //       Icon(Icons.add),
                      //     ],
                      //   ),
                      // ),
                      // Obx(() => Text(
                      //       controller.title.value,
                      //       style: const TextStyle(fontSize: 20),
                      //     )),
                      // Padding(
                      //   padding: const EdgeInsets.all(0),
                      //   child: TextFormField(
                      //     controller: controller.usernameController,
                      //     decoration: const InputDecoration(
                      //       border: UnderlineInputBorder(),
                      //       labelText: 'Enter your username',
                      //     ),
                      //   ),
                      // ),
                      // TextFormField(
                      //   controller: controller.ageController,
                      //   decoration: const InputDecoration(
                      //     border: UnderlineInputBorder(),
                      //     labelText: 'Enter your age',
                      //   ),
                      // ),
                      const SizedBox(
                        height: 77,
                      ),
                      const Center(
                        child: Text(
                          "Copyright © 2024 Story.AI. All Rights Reserved.",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF666666)),
                        ),
                      ),
                      // const SizedBox(
                      //   height: 48,
                      // ),
                    ],
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
