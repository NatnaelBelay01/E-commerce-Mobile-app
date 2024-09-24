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
          child: Placeholder(),
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
                child: Container(width: 69, height: 14, child: Placeholder())),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 122,
                height: 14,
                child: Placeholder(),
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
            child: Placeholder(),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
