import 'package:flutter/material.dart';
import 'package:my_app/shared/colors/app_colors.dart';
import 'package:my_app/shared/textStyle/app_text_style.dart';

class ButtonPrimary extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const ButtonPrimary({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.fromLTRB(136, 16, 136, 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: AppColors.gradientLogo,
          ),
        ),
        child: Text(
          text.toUpperCase(),
          style: AppTextStyle.subtitle.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
