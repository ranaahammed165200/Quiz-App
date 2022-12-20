import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_ui/Style/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttontext,
    required this.textcolor,
    required this.buttoncolor,
  }) : super(key: key);
  final buttontext;
  final textcolor;
  final buttoncolor;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      ], borderRadius: BorderRadius.circular(12), color: buttoncolor),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                buttontext,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: textcolor,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
