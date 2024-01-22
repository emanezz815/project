import 'package:emanezz/config/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

import 'components/ink_well.dart';
import 'components/my_button.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? updateImage;
  String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF005581),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xFF005581),
        title: const Text(
          "Hello Rawan",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.notifications_on,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                )),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            "assets/images/photo.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 200,
                                  color: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        MyButton(
                                          onPressed: () {
                                            pickImage();
                                            Navigator.pop(context);
                                          },
                                          text: 'Take Photo',
                                          sizeBoxHeight: 50,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        MyButton(
                                          onPressed: () {
                                            getImage();

                                            Navigator.pop(context);
                                          },
                                          text: 'Choose Photo',
                                          sizeBoxHeight: 50,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF005581),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            padding: const EdgeInsets.all(6),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CuInkWell(
                      text: 'rawan',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: SvgPicture.asset(
                          "assets/images/vector.svg",
                        ),
                      )),
                  const SizedBox(
                    height: 11,
                  ),
                  CuInkWell(
                      text: 'mohamed',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: SvgPicture.asset(
                          "assets/images/vector.svg",
                        ),
                      )),
                  const SizedBox(
                    height: 11,
                  ),
                  CuInkWell(
                      enabled: false,
                      text: 'Rawanmoha12',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: SvgPicture.asset(
                          "assets/images/vector.svg",
                        ),
                      )),
                  const SizedBox(
                    height: 11,
                  ),
                  CuInkWell(
                      enabled: false,
                      text: 'rawanmohamed@gmail.com',
                      prefixIcon: SvgPicture.asset(
                        "assets/images/mail.svg",
                      )),
                  const SizedBox(
                    height: 11,
                  ),
                  CuInkWell(
                      text: '01025378301',
                      prefixIcon: SvgPicture.asset(
                        "assets/images/phone.svg",
                      )),
                  const SizedBox(
                    height: 11,
                  ),
                  CuInkWell(
                    enabled: false,
                    text: 'Reset Password',
                    prefixIcon: SvgPicture.asset(
                      "assets/images/lock.svg",
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Routes.resetPasswordPage);
                    },
                    suffixIcon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF005581),
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  MyButton(onPressed: () {}, text: "UPDATE"),
                ],
              ),
            )),
      ),
    );
  }

  void pickImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);

    if (image != null) {
      setState(() {
        updateImage = File(image.path);
      });
    }
  }

  Future<void> getImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      updateImage = File(pickedFile.path);
    }
  }
}
