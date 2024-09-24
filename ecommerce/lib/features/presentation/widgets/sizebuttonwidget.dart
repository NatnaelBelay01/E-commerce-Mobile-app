import 'package:flutter/material.dart';

class Sizebuttonwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF3F51F3),
          borderRadius: BorderRadius.circular(8),
        ),
        width: 60,
        height: 60,
        child: Center(
            child: Text(
          '40',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
