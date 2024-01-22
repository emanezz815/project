import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/ink_well.dart';
import 'config/routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blueAccent,
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
      body: Container(
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
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    "assets/images/photo.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                const Text(
                  'Rawanmoha12',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                SizedBox(
                  height: 50,
                  width: 296,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: const Color(0xFFFFD200),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.editProfilePage);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Text(
                          'Edit Profile',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0.03,
                            letterSpacing: -0.41,
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 25,
                ),
                CuInkWell(
                  enabled: false,
                  text: 'Helps',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(
                      "assets/images/help_icon.svg",
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF005581),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                CuInkWell(
                  enabled: false,
                  text: 'Logout',
                  prefixIcon: SvgPicture.asset(
                    "assets/images/logout_icon.svg",
                  ),
                  suffixIcon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF005581),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
