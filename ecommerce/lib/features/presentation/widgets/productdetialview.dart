import 'package:flutter/material.dart';

class Productdetailview extends StatelessWidget {
  final String description;
  Productdetailview({required this.description});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Men\'s shoe',
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Poppins',
            color: Color(0xFFAAAAAA),
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Text(
              '(4.0)',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                color: Color(0xFFAAAAAA),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
