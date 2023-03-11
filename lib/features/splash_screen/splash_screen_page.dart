import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/shared/colors/app_colors.dart';
import 'package:my_app/shared/icons/app_icons.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, '/login');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: AppColors.gradientLogo,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          height: 116,
          width: 116,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 26, 30, 24),
            child: SvgPicture.asset(AppIcons.iconLogoFlutter),
          ),
        ),
      ),
    );
  }
}
