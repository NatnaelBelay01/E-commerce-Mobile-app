import 'package:flutter/material.dart';

class ProductImageWidget extends StatelessWidget {
  final String imageurl;

  ProductImageWidget({required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 286,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              imageurl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 16,
            left: 16,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              mini: true,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Icon(Icons.arrow_back_ios_new_rounded),
            ),
          )
        ],
      ),
    );
  }
}
