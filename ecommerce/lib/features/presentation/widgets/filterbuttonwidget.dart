import 'package:ecommerce/features/presentation/widgets/filterwidget.dart';
import 'package:flutter/material.dart';

class Filterbuttonwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return FilterWidget();
            });
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: Color(0xFF3F51F3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.filter_list_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
