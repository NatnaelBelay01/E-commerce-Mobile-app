
import 'package:flutter/material.dart';

class DescriptionTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                'description',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              )),
          Container(
            width: 366,
            height: 140,
            decoration: BoxDecoration(
                color: Color(0xFFF3F3F3),
                borderRadius: BorderRadius.circular(6)),
          )
        ],
      ),
    );
  }
}
