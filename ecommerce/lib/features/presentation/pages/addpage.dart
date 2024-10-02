import 'package:ecommerce/features/presentation/widgets/addpageappbar.dart';
import 'package:ecommerce/features/presentation/widgets/descriptiontextfield.dart';
import 'package:ecommerce/features/presentation/widgets/smalltextfield.dart';
import 'package:ecommerce/features/presentation/widgets/uploadimagewidget.dart';
import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: MyAddPage(),
    );
  }
}

class MyAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PageAppBar(name: 'Add Product'),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Uploadimagewidget(),
          SmallTextField(name: 'name'),
          SmallTextField(name: 'catagory'),
          SmallTextField(name: 'price'),
          DescriptionTextField(),
          Container(
            width: 366,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xFF3F51F3),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
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
          Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: 366,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xC9FF1313)),
                ),
                child: Center(
                    child: Text(
                  'DELETE',
                  style: TextStyle(
                      color: Color(0xC9FF1313),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                )),
              ))
        ],
      )),
    );
  }
}
