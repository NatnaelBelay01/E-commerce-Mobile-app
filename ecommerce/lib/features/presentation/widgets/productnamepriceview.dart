import 'package:flutter/material.dart';

class ProductNamePriceView extends StatelessWidget {
	final String name;
	final double price;
	ProductNamePriceView({required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 36,
                fontWeight: FontWeight.w600,
                color: Color(0xFF3E3E3E))),
        Text(
          "\$$price",
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
