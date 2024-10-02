import 'package:flutter/material.dart';

class Textareawidget extends StatelessWidget {
  final String description;
  Textareawidget({required this.description});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Text(
        description,
        style: TextStyle(
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            color: Color(0xFF666666)),
      ),
    );
  }
}
