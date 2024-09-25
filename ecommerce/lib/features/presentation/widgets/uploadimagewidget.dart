import 'package:flutter/material.dart';

class Uploadimagewidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 366,
        height: 190,
        decoration: BoxDecoration(
          color: Color(0xFFF3F3F3),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.insert_photo_outlined),
            Text('Upload Image'),
          ],
        ),
      ),
    );
  }
}
