import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String hintText;
  final TextEditingController textController;
  const InputText({super.key, required this.hintText, required this.textController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
      ),
    );
  }
}
