import 'package:flutter/material.dart';

class Searchtextfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 311,
      height: 48,
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.arrow_forward),
          hintText: 'Leather',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
