import 'package:flutter/material.dart';

class TextFieldNumber extends StatelessWidget {
  const TextFieldNumber({
    Key? key,
    required this.controller,
    required this.hint,
  }) : super(key: key);

  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      color: Colors.white,
      child: TextField(
        controller: controller,
        cursorColor: const Color.fromRGBO(32, 44, 86, 1),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: hint,
        ),
      ),
    );
  }
}
