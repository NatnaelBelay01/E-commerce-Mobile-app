import 'package:ecommerce/features/presentation/bloc/product_bloc.dart';
import 'package:ecommerce/features/presentation/bloc/product_event.dart';
import 'package:ecommerce/features/presentation/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  PageAppBar({required this.name});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
				Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        },
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Color(0xFF3F51F3),
        ),
      ),
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
