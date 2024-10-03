import 'package:ecommerce/features/domain/entities/productentity.dart';
import 'package:ecommerce/features/presentation/bloc/product_bloc.dart';
import 'package:ecommerce/features/presentation/bloc/product_event.dart';
import 'package:ecommerce/features/presentation/bloc/product_state.dart';
import 'package:ecommerce/features/presentation/pages/addpage.dart';
import 'package:ecommerce/features/presentation/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomButtons extends StatelessWidget {
  Product product;
  BottomButtons({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductBloc, ProductState>(
        listener: (context, state) {
          if (state is ProductDeletedState) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          } else if (state is ErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Failed to add product: ${state.errormessage}'),
              ),
            );
          }
        },
        child: Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 430,
              height: 114,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      context
                          .read<ProductBloc>()
                          .add(DeleteProductEvent(product.id));
                    },
                    child: Container(
                      width: 152,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xC9FF1313),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'DELETE',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xC9FF1313),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MyAddPage(existingProduct: product),
                        ),
                      );
                    },
                    child: Container(
                      width: 152,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3F51F3),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'UPDATE',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
