import 'package:ecommerce/features/domain/entities/productentity.dart';
import 'package:equatable/equatable.dart';

abstract class ProductState extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialState extends ProductState {}

class LoadingState extends ProductState {}

class LoadedAllProductState extends ProductState {
  final List<Product> result;
  LoadedAllProductState(this.result);
}

class LoadedSingleProductState extends ProductState {
  final Product result;
  LoadedSingleProductState(this.result);
}

class ErrorState extends ProductState {
  final String errormessage;
  ErrorState(this.errormessage);
}
