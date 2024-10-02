import 'package:ecommerce/features/domain/entities/productentity.dart';
import 'package:ecommerce/features/presentation/bloc/product_bloc.dart';
import 'package:ecommerce/features/presentation/bloc/product_event.dart';
import 'package:ecommerce/features/presentation/pages/home.dart';
import 'package:ecommerce/features/presentation/widgets/addpageappbar.dart';
import 'package:ecommerce/features/presentation/widgets/descriptiontextfield.dart';
import 'package:ecommerce/features/presentation/widgets/pricetextfiled.dart';
import 'package:ecommerce/features/presentation/widgets/smalltextfield.dart';
import 'package:ecommerce/features/presentation/widgets/uploadimagewidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAddPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController catagoryController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  String imageUrlController = '';

  MyAddPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PageAppBar(name: 'Add Product'),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Uploadimagewidget(
            onImageselected: (path) {
              imageUrlController = path;
            },
          ),
          SmallTextField(
            name: 'name',
            controller: nameController,
          ),
          SmallTextField(
            name: 'catagory',
            controller: catagoryController,
          ),
          PriceTextField(
            controller: priceController,
          ),
          DescriptionTextField(controller: descriptionController),
          GestureDetector(
            onTap: () async {
              Product prod = Product(
                id: '1',
                name: nameController.text,
                description: descriptionController.text,
                imageUrl: imageUrlController,
                price: double.parse(priceController.text),
              );
              context.read<ProductBloc>().add(CreateProductEvent(prod));
							Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage()));
              nameController.clear();
              descriptionController.clear();
              catagoryController.clear();
              priceController.clear();
              imageUrlController = '';
            },
            child: Container(
              width: 366,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color(0xFF3F51F3),
                  borderRadius: BorderRadius.circular(8)),
              child: const Center(
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(onTap: (){
								imageUrlController = '';
								catagoryController.clear();
								nameController.clear();
								descriptionController.clear();
								priceController.clear();
							}, child: Container(
              width: 366,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xC9FF1313)),
              ),
              child: const Center(
                child: Text(
                  'DELETE',
                  style: TextStyle(
                      color: Color(0xC9FF1313),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ) ),
          ),
        ],
      )),
    );
  }
}
