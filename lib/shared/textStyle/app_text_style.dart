import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/shared/colors/app_colors.dart';

class AppTextStyle {
  static final title = GoogleFonts.ptSans(fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black);
  static final subtitle = GoogleFonts.ptSans(fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.textColorSecundary);
  static final caption = GoogleFonts.ptSans(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black);

}