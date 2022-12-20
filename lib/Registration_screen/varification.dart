import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pinput/pinput.dart';
import 'package:quiz_app_ui/Registration_screen/New_password.dart';
import 'package:quiz_app_ui/Registration_screen/Sign_In.dart';
import 'package:quiz_app_ui/Registration_screen/Sign_up.dart';
import 'package:quiz_app_ui/Style/app_color.dart';
import 'package:quiz_app_ui/widget/Custom_Button.dart';

class Varification extends StatefulWidget {
  const Varification({super.key});

  @override
  State<Varification> createState() => _VarificationState();
}

class _VarificationState extends State<Varification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(children: [
            Lottie.asset('images/verification.json'),
            Text(' Verification ',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Appcolor.titleColor,
                )),
            SizedBox(
              height: 45,
            ),
            Text('Enter Your Verification Code',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Appcolor.titleColor,
                )),
            SizedBox(
              height: 17,
            ),
            Pinput(
              slideTransitionBeginOffset: Offset(6.0, 6.0),
            ),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text("If you didn’t receive a code, ",
                        style: GoogleFonts.poppins(
                          color: Appcolor.titleColor,
                        ))),
                Text(
                  'Resend',
                  style: GoogleFonts.poppins(
                      fontSize: 18, color: Appcolor.textButtonColor),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            CustomButton(
                    buttontext: 'Send',
                    textcolor: Colors.white,
                    buttoncolor: Appcolor.blueShade1)
                .onTap(() => NewPassword().launch(context)),
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
          ])),
    ));
  }
}
