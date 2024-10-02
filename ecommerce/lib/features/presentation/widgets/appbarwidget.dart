import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Container(
          width: 50,
          height: 50,
          child: Icon(
            Icons.account_box_rounded,
            size: 50,
            color: Color(0xFFD9D9D9),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
          ),
        ),
      ),
      title: Container(
        width: 200,
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 69,
                  height: 14,
                  child: Text('July 14, 2024', style: TextStyle(fontSize: 12)),
                )),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 122,
                height: 16,
                child: Text('Hello User', style: TextStyle(fontSize: 15)),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Container(
            width: 40,
            height: 40,
            child: Icon(
              Icons.notifications,
              size: 40,
              color: Color(0xFF666666),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              border: Border.all(
                width: 1,
                color: Color(0xFF666666),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
