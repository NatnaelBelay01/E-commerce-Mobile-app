import 'package:flutter/material.dart';

class PageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  PageAppBar({required this.name});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xFF3F51F3),
          )),
      title: Row(
        children: [
          SizedBox(
            width: 70,
          ),
          Text(
            name,
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
