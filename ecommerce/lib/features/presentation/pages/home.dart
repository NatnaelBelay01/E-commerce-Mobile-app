import 'package:ecommerce/features/presentation/bloc/product_bloc.dart';
import 'package:ecommerce/features/presentation/bloc/product_event.dart';
import 'package:ecommerce/features/presentation/bloc/product_state.dart';
import 'package:ecommerce/features/presentation/pages/details.dart';
import 'package:ecommerce/features/presentation/widgets/customeaddbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/appbarwidget.dart';
import '../widgets/scrollablewidget.dart';
import 'package:ecommerce/injection_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProductBloc>(),
      child: MaterialApp(
        title: 'Flutter demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            useMaterial3: true),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    context.read<ProductBloc>().add(LoadAllProductEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is LoadedAllProductState) {
              return Scrollablewidget(products: state.result);
            } else if (state is ErrorState) {
              return Center(child: Text(state.errormessage));
            }
            return Container();
          },
        ),
        floatingActionButton: CustomeAddButton());
  }
}
