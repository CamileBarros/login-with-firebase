import 'package:flutter/material.dart';
import 'package:my_app/shared/textStyle/app_text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Hello world!',
          style: AppTextStyle.title,
        ),
      ),
    );
  }
}
