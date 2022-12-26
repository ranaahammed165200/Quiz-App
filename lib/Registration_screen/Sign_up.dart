import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_app_ui/Registration_screen/Sign_In.dart';
import 'package:quiz_app_ui/Style/app_color.dart';
import 'package:quiz_app_ui/widget/Custom_Button.dart';
import 'package:quiz_app_ui/widget/Custom_log_in_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: Text('Create an account',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Appcolor.titleColor,
                  )),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Container(
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
                textFieldType: TextFieldType.NAME,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Enter Your Name...',
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Container(
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
                    hintText: 'Enter Your Email...',
                    prefixIcon: Icon(Icons.mail)),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Container(
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
                textFieldType: TextFieldType.PHONE,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Enter Your Phone...',
                    prefixIcon: Icon(Icons.phone)),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Container(
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
                textFieldType: TextFieldType.PASSWORD,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Please Enter Your Password...',
                    prefixIcon: Icon(Icons.lock)),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Container(
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
                textFieldType: TextFieldType.PASSWORD,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Enter Your Confirm Password...',
                    prefixIcon: Icon(Icons.lock)),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: CustomButton(
                buttontext: 'Sign In',
                textcolor: Colors.white,
                buttoncolor: Appcolor.blueShade1),
          ),
          const SizedBox(
            height: 20,
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
          const SizedBox(
            height: 20,
          ),
          CustomloginButton(
            ImageUrl: 'images/facebook.png',
            loginButtonColor: Appcolor.blueShade2,
            loginText: 'Log in with facebook',
            TextColor: Colors.white,
          ),
          SizedBox(
            height: 21,
          ),
          CustomloginButton(
            ImageUrl: 'images/gogle.png',
            loginButtonColor: Colors.white,
            loginText: 'Log in with Google',
            TextColor: Colors.black,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an Account?',
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0D0E0E)),
              ),
              Text(
                'Log In',
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF160062)),
              ).onTap(() => SignIn().launch(context))
            ],
          )
        ]),
      )),
    );
  }
}
