import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_app_ui/Registration_screen/Sign_In.dart';
import 'package:quiz_app_ui/Registration_screen/Sign_up.dart';
import 'package:quiz_app_ui/Style/app_color.dart';
import 'package:quiz_app_ui/widget/Custom_Button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('images/welcome.json'),
          Text(
            'Please Sign Up or Login\n To Continue 👋',
            style:
                GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w700),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10.0,
          ),
          CustomButton(
                  buttontext: 'Sign In',
                  buttoncolor: Appcolor.blueShade1,
                  textcolor: white)
              .onTap(() => SignIn().launch(context)),
          SizedBox(
            height: 10.0,
          ),
          CustomButton(
                  buttontext: 'Sign Up',
                  buttoncolor: Colors.white,
                  textcolor: black)
              .onTap(() => SignUp().launch(context))
        ],
      ),
    ));
  }
}
