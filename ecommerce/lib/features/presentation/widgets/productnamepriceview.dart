import 'package:flutter/material.dart';

class ProductNamePriceView extends StatelessWidget {
  final String name;
  final double price;
  const ProductNamePriceView(
      {super.key, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
			mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 300,
          child: Text(
            name,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 36,
              fontWeight: FontWeight.w600,
              color: Color(0xFF3E3E3E),
            ),
          ),
        ),
        Container(width: 100, child: Text(
          "\$$price",
          style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xFF3E3E3E)),
        ) ),
      ],
    );
  }
}
