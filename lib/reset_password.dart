import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/ink_well.dart';
import 'components/my_button.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70),
              )),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Reset Password',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color(0xFFFFD200),
                        fontSize: 37,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0.02,
                        letterSpacing: -0.41,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 55,
                ),
                CuInkWell(
                  enabled: true,
                  text: 'Current Password',
                  prefixIcon: SvgPicture.asset(
                    "assets/images/lock.svg",
                  ),
                ),
                const SizedBox(
                  height: 44,
                ),
                CuInkWell(
                  enabled: true,
                  text: 'New Password',
                  prefixIcon: SvgPicture.asset(
                    "assets/images/lock.svg",
                  ),
                ),
                const SizedBox(
                  height: 44,
                ),
                CuInkWell(
                  enabled: true,
                  text: 'Confirm New Password',
                  prefixIcon: SvgPicture.asset(
                    "assets/images/lock.svg",
                  ),
                ),
                const SizedBox(
                  height: 165,
                ),
                MyButton(onPressed: () {}, text: "UPDATE PASSWORD"),
              ],
            ),
          )),
    );
  }
}
