import 'package:ecommerce/features/domain/entities/productentity.dart';
import 'package:ecommerce/features/presentation/pages/search.dart';
import 'package:ecommerce/features/presentation/widgets/productcard.dart';
import 'package:flutter/material.dart';

class Scrollablewidget extends StatelessWidget {
  final List<Product> products;
  Scrollablewidget({required this.products});

  List<Widget> buildcards() {
    return products
        .map(
          (product) => Productcard(
            product: product,
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 230,
          height: 26,
          child: Text(
            'Available Products',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xFFD9D9D9), width: 1),
              ),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MySearchPage()));
                  },
                  child: Icon(
                    Icons.search,
                    size: 40,
                    color: Color(0xFFD9D9D9),
                  )),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: buildcards(),
        ),
      ),
    );
  }
}
