
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PriceTextField extends StatelessWidget {
  final TextEditingController controller;

  const PriceTextField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'price',
              style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            width: 366,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFFF3F3F3),
              borderRadius: BorderRadius.circular(6),
            ),
            child: TextField(
							keyboardType: TextInputType.number,
							inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
              controller: controller,
              maxLines: 1,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(width: 1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
