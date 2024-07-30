import 'package:flutter/material.dart';

import 'package:get/get.dart';
// ignore: unused_import
import 'package:satua/app/core/theme_manager/text_style_manager.dart';
import 'package:satua/app/modules/details/views/satua_text_form_field.dart';
// ignore: unused_import
import 'package:satua/app/routes/app_pages.dart';

import '../controllers/details_controller.dart';

class DetailsView extends GetView<DetailsController> {
  const DetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // titleTextStyle: const TextStyle(fontWeight: FontWeight.w900),
        title: const Text('Imagine your story'),
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
                        height: 30,
                      ),
                      SatuaTextFormFieldWidget(
                        title: 'My name is:',
                        controller: controller.nameController,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //
                      // Child's Name
                      //
                      SatuaTextFormFieldWidget(
                        title: 'Age:',
                        controller: controller.ageController,
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      SatuaTextFormFieldWidget(
                        title: 'NDD (Filled by Parents):',
                        controller: controller.neuroController,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //
                      // Gender
                      //
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Gender:",
                              style: TextStyle(
                                  fontSize: 12.0, color: Color(0xFF666666))),
                          const SizedBox(
                              height: 8.0), // Gap between label and input
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              // Keep your existing decoration
                              labelStyle: const TextStyle(
                                  fontSize: 12.0, color: Color(0xFF666666)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Color(0xFFE8E8E8), width: 1.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Color(0xFFE8E8E8), width: 1.0),
                              ),
                            ),
                            items: ['Male', 'Female', 'Non Binary']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              controller.selectedGender.value =
                                  newValue ?? 'Male';
                              print(
                                  'Selected gender: $newValue'); // Example: Do something with the selected value
                            },
                          )
                        ],
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      //
                      // Language
                      //
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Language:",
                              style: TextStyle(
                                  fontSize: 12.0, color: Color(0xFF666666))),
                          const SizedBox(
                              height: 8.0), // Gap between label and input
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              // Keep your existing decoration
                              labelStyle: const TextStyle(
                                  fontSize: 12.0, color: Color(0xFF666666)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Color(0xFFE8E8E8), width: 1.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Color(0xFFE8E8E8), width: 1.0),
                              ),
                            ),
                            items: [
                              'English',
                              'Bahasa Indonesia',
                              'Bahasa Bali'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              controller.selectedLang.value =
                                  newValue ?? 'English';
                              print(
                                  'Selected language: $newValue'); // Example: Do something with the selected value
                            },
                          )
                        ],
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      //
                      // What's the story about
                      //
                      SatuaTextFormFieldWidget(
                        title: 'This story is about:',
                        controller: controller.aboutController,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //
                      // Where
                      //
                      SatuaTextFormFieldWidget(
                        title: 'The story should take place in:',
                        controller: controller.placeController,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //
                      // Feel
                      //
                      SatuaTextFormFieldWidget(
                        title: 'The story should feel:',
                        controller: controller.feelController,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //
                      // Lesson
                      //
                      SatuaTextFormFieldWidget(
                        title: 'I want to learn about:',
                        controller: controller.primaryValController,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //
                      // Details
                      //
                      SatuaTextFormFieldWidget(
                        title: 'Please also add in:',
                        controller: controller.extraController,
                      ),

                      const SizedBox(
                        height: 45,
                      ),
                      ElevatedButton(
                        onPressed: controller.goToResult,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFFFFDE00), // Your background color
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
                          'Generate Story!',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
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
