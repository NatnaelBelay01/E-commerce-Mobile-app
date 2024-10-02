import 'package:ecommerce/features/presentation/widgets/addpageappbar.dart';
import 'package:ecommerce/features/presentation/widgets/filterbuttonwidget.dart';
import 'package:ecommerce/features/presentation/widgets/searchtextfield.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter-demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
          useMaterial3: true,
        ),
        home: MySearchPage());
  }
}

class MySearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PageAppBar(name: 'Search Product'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(2), child: Searchtextfield()),
                  Filterbuttonwidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
