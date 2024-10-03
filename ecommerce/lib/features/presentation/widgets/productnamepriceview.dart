import 'package:flutter/material.dart';

class ProductNamePriceView extends StatelessWidget {
  final String name;
  final double price;
  const ProductNamePriceView(
      {super.key, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 274,
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
          SizedBox(
            width: 84,
            child: Text(
              "\$$price",
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF3E3E3E)),
            ),
          ),
        ],
      ),
    );
  }
}
