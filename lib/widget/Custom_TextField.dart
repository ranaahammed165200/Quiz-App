import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.TextFieldtext,
    required this.hinttext,
    required this.textFieldType,
    required this.prefixIcon,
  }) : super(key: key);
  final String TextFieldtext;
  final String hinttext;
  final TextFieldType textFieldType;
  final Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          TextFieldtext,
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF695C5C)),
        ),
        SizedBox(
          height: 6.0,
        ),
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: Offset(6, 6),
                blurRadius: 12,
                spreadRadius: 1,
                color: Colors.grey.shade300)
          ]),
          child: AppTextField(
            textFieldType: textFieldType,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(12)),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              hintText: hinttext,
              prefixIcon: prefixIcon,
            ),
          ),
        )
      ],
    );
  }
}
