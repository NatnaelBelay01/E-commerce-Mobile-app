import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          width: 430,
          height: 114,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 152,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xC9FF1313),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  'DELETE',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xC9FF1313),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
              Container(
                width: 152,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF3F51F3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  'UPDATE',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
            ],
          ),
        ));
  }
}
