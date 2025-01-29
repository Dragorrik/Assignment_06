import 'package:assignment_06/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle textStyle14BlackW500 = GoogleFonts.poppins(
    textStyle: TextStyle(
      color: Color(AppColors.tealColor),
      fontSize: 14,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    ),
  );

  static TextStyle textStyle16BlackW400 = GoogleFonts.poppins(
    textStyle: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
  );
  static TextStyle textStyle14WhiteW400 = GoogleFonts.poppins(
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );
}
