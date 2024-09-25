import 'package:ecommerce/features/presentation/widgets/detailbottombuttonswidget.dart';
import 'package:ecommerce/features/presentation/widgets/productdetialview.dart';
import 'package:ecommerce/features/presentation/widgets/productnamepriceview.dart';
import 'package:ecommerce/features/presentation/widgets/sizebuttonwidget.dart';
import 'package:ecommerce/features/presentation/widgets/textareawidget.dart';
import 'package:flutter/material.dart';
import '../widgets/productimagewidget.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: MyDetailsPage(),
    );
  }
}

class MyDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        productImageWidget(),
        Productdetailview(),
        productNamePriceView(),
        Align(
          alignment: Alignment.topLeft,
          child: Text('Size:',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF3E3E3E))),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Sizebuttonwidget(),
            Sizebuttonwidget(),
            Sizebuttonwidget(),
            Sizebuttonwidget(),
            Sizebuttonwidget(),
            Sizebuttonwidget(),
            Sizebuttonwidget(),
            Sizebuttonwidget(),
            Sizebuttonwidget(),
            Sizebuttonwidget(),
          ]),
        ),
        Container(
          width: 366,
          height: 260,
          child: Padding(padding: EdgeInsets.all(10), child: Textareawidget()),
        ),
        Padding(padding: EdgeInsets.all(8), child: BottomButtons()),
      ],
    )));
  }
}
