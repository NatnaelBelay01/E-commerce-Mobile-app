import 'package:ecommerce/features/domain/entities/productentity.dart';
import 'package:ecommerce/features/presentation/widgets/detailbottombuttonswidget.dart';
import 'package:ecommerce/features/presentation/widgets/productdetialview.dart';
import 'package:ecommerce/features/presentation/widgets/productnamepriceview.dart';
import 'package:ecommerce/features/presentation/widgets/sizebuttonwidget.dart';
import 'package:ecommerce/features/presentation/widgets/textareawidget.dart';
import 'package:flutter/material.dart';
import '../widgets/productimagewidget.dart';


class MyDetailsPage extends StatelessWidget {
	final Product product;
	const MyDetailsPage({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        ProductImageWidget(imageurl: product.imageUrl),
        Productdetailview(description: product.description),
        ProductNamePriceView(name: product.name, price: product.price,),
        const Align(
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
        SizedBox(
          width: 366,
          height: 260,
          child: Padding(padding: const EdgeInsets.all(10), child: Textareawidget(description: product.description)),
        ),
        Padding(padding: const EdgeInsets.all(8), child: BottomButtons()),
      ],
    ),),);
  }
}
