import 'package:ecommerce/features/presentation/widgets/productcard.dart';
import 'package:flutter/material.dart';

class Scrollablewidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 230,
          height: 26,
          child: Placeholder(),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 5),
              child: Container(
                height: 40,
                width: 40,
                child: Placeholder(),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
