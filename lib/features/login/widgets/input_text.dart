import 'package:flutter/material.dart';
import 'package:my_app/shared/colors/app_colors.dart';
import 'package:my_app/shared/textStyle/app_text_style.dart';

class InputText extends StatelessWidget {
  final String hintText;
  final TextEditingController textController;
  final bool hasSuffixIcon;
  final bool visibility;
  final IconData? suffixIcon;
  final IconData? preffixIcon;
  final VoidCallback? onTap;
  const InputText(
      {super.key,
      required this.hintText,
      required this.textController,
      this.hasSuffixIcon = false,
      this.suffixIcon,
      this.preffixIcon,
      this.visibility = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: visibility,
      controller: textController,
      decoration: InputDecoration(
        prefixIcon: Icon(
          preffixIcon,
          color: AppColors.textColorTertiary,
        ),
        suffixIcon: hasSuffixIcon
            ? IconButton(
                icon: Icon(suffixIcon),
                color: AppColors.textColorTertiary,
                onPressed: onTap,
              )
            : null,
        fillColor: AppColors.inputBoxColor,
        filled: true,
        hintText: hintText,
        hintStyle:
            AppTextStyle.subtitle.copyWith(color: AppColors.textColorTertiary),
        focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.inputBoxColor),
        ),
      ),
    );
  }
}
