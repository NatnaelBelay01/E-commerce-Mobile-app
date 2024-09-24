import 'package:flutter/material.dart';

class productImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 286,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/b.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 16,
            left: 16,
            child: FloatingActionButton(
              onPressed: () {},
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
