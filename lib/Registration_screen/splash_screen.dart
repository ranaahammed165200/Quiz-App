import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_app_ui/Registration_screen/Sign_In.dart';
import 'package:quiz_app_ui/Registration_screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> GoScreen() async {
    await Future.delayed(Duration(seconds: 3)).then((value) => WelcomeScreen()
        .launch(context,
            isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide));
  }

  @override
  void initState() {
    GoScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF439A97),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.center,
              child: Lottie.asset("images/splashjson.json")),
        ],
      ),
    );
  }
}
