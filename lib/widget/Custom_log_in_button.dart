import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_ui/Style/app_color.dart';

class CustomloginButton extends StatelessWidget {
  const CustomloginButton({
    Key? key,
    required this.loginButtonColor,
    required this.loginText,
    required this.TextColor,
    required this.ImageUrl,
  }) : super(key: key);
  final loginButtonColor;
  final String loginText;
  final TextColor;
  final ImageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: Offset(6, 6),
              color: Colors.grey.shade300,
              blurRadius: 12,
              spreadRadius: 2),
          BoxShadow(
              offset: Offset(6, 6),
              color: Colors.grey.shade300,
              blurRadius: 12,
              spreadRadius: 2),
        ], borderRadius: BorderRadius.circular(12), color: loginButtonColor),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                ImageUrl,
                height: 26,
                width: 26,
              ),
              SizedBox(
                width: 42,
              ),
              Text(
                loginText,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: TextColor,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
