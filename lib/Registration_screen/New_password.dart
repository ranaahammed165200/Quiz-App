import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_app_ui/Style/app_color.dart';
import 'package:quiz_app_ui/widget/Custom_Button.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Lottie.asset('images/new-password.json'),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  'New Password',
                  style: GoogleFonts.poppins(
                      color: Appcolor.titleColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Text('Enter New Password',
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
                      hintText: 'At least 8 digit...',
                      prefixIcon: Icon(Icons.lock)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Text('Confirm Password',
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
                      hintText: 'Confirm Password...',
                      prefixIcon: Icon(Icons.lock)),
                ),
              ),
              SizedBox(
                height: 27,
              ),
              CustomButton(
                  buttontext: 'Send',
                  buttoncolor: Appcolor.blueShade1,
                  textcolor: white)
            ],
          ),
        ),
      ),
    );
  }
}
