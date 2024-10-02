import 'package:ecommerce/features/domain/entities/productentity.dart';
import 'package:ecommerce/features/presentation/pages/search.dart';
import 'package:ecommerce/features/presentation/widgets/productcard.dart';
import 'package:flutter/material.dart';

class Scrollablewidget extends StatelessWidget {
  final List<Product> products;
  const Scrollablewidget({super.key, required this.products});

  List<Widget> buildcards() {
    List<Widget> res = products
        .map(
          (product) => Productcard(
            product: product,
          ),
        )
        .toList();
		return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
			backgroundColor: Colors.white,
			elevation: 0,
        title: const SizedBox(
          width: 250,
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
            padding: const EdgeInsets.only(right: 5),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFFD9D9D9), width: 1),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MySearchPage()));
                },
                child: const Icon(
                  Icons.search,
                  size: 40,
                  color: Color(0xFFD9D9D9),
                ),
              ),
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
