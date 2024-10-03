

import 'package:ecommerce/features/presentation/bloc/product_bloc.dart';
import 'package:ecommerce/features/presentation/bloc/product_event.dart';
import 'package:ecommerce/features/presentation/pages/addpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CustomeAddButton extends StatelessWidget{


	@override
	Widget build(BuildContext context){
		return FloatingActionButton(
			onPressed: () async {
				Navigator.push(context, MaterialPageRoute(builder: (context) => MyAddPage()));
			},
			backgroundColor: Colors.blueAccent,
			child: Icon(Icons.add),
		);
	}
}
