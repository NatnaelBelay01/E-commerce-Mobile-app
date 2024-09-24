import 'package:flutter/material.dart';

class productNamePriceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Derby Leather",
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 36,
                fontWeight: FontWeight.w600,
                color: Color(0xFF3E3E3E))),
        Text(
          "\$120",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xFF3E3E3E)),
        ),
      ],
    );
  }
}
