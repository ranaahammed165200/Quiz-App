import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_app_ui/Registration_screen/Sign_In.dart';
import 'package:quiz_app_ui/Registration_screen/Sign_up.dart';
import 'package:quiz_app_ui/Registration_screen/varification.dart';
import 'package:quiz_app_ui/Style/app_color.dart';
import 'package:quiz_app_ui/widget/Custom_Button.dart';
import 'package:quiz_app_ui/widget/Custom_log_in_button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Lottie.asset('images/forgot-password.json'),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Center(
                    child: Text(
                      'Forgot Password',
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 49,
                ),
                Center(
                  child: Text(
                    'Enter Email Address',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Text('Email',
                      style: GoogleFonts.poppins(
                        color: Appcolor.labelColor,
                      )),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            offset: Offset(6, 6),
                            spreadRadius: 1,
                            blurRadius: 12),
                        BoxShadow(
                            color: Colors.grey.shade300,
                            offset: Offset(-6, -6),
                            spreadRadius: 1,
                            blurRadius: 12),
                      ],
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.transparent),
                  child: AppTextField(
                    textFieldType: TextFieldType.EMAIL,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(12)),
                        hintText: 'Please Enter Your Email...',
                        prefixIcon: Icon(Icons.mail)),
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Center(
                    child: Text('Back to Sign In',
                        style: GoogleFonts.poppins(
                          color: Appcolor.textButtonColor,
                        )).onTap(() => SignIn().launch(context))),
                SizedBox(
                  height: 20.0,
                ),
                CustomButton(
                        buttontext: 'Send',
                        textcolor: Colors.white,
                        buttoncolor: Appcolor.blueShade1)
                    .onTap(() => Varification().launch(context)),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          width: 156,
                          color: Appcolor.titleColor.withOpacity(0.5),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'or with',
                            style: GoogleFonts.poppins(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          )),
                      Expanded(
                        child: Container(
                          height: 1,
                          width: 156,
                          color: Appcolor.titleColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                        buttontext: 'Sign Up',
                        buttoncolor: Colors.white,
                        textcolor: black)
                    .onTap(() => SignUp().launch(context))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
