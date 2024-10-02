

import 'package:ecommerce/features/presentation/pages/addpage.dart';
import 'package:flutter/material.dart';


class CustomeAddButton extends StatelessWidget{


	@override
	Widget build(BuildContext context){
		return FloatingActionButton(
			onPressed: (){
				Navigator.push(context, MaterialPageRoute(builder: (context) => MyAddPage()));
			},
			backgroundColor: Colors.blueAccent,
			child: Icon(Icons.add),
		);
	}
}
