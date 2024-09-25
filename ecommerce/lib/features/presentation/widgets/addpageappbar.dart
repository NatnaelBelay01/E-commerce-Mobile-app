import 'package:flutter/material.dart';

class AddPageAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios_new_rounded),
      title: Row(
        children: [
          SizedBox(
            width: 70,
          ),
          Text(
            'Add Product',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: Color(0xFF3E3E3E)),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
