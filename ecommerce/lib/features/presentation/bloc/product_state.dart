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
	
	@override
	List<Object> get props => [result];
}

class LoadedSingleProductState extends ProductState {
  final Product result;
  LoadedSingleProductState(this.result);
	@override
	List<Object> get props => [result];
}

class ErrorState extends ProductState {
  final String errormessage;
  ErrorState(this.errormessage);
	@override
	List<Object> get props => [errormessage];
}


class ProductDeletedState extends ProductState{}

class ProductCreatedState extends ProductState{
	final Product product;
	ProductCreatedState(this.product);
	@override
	List<Object> get props => [product];
}

class ProductUpdatedState extends ProductState{
	final Product product;
	ProductUpdatedState(this.product);
	@override
	List<Object> get props => [product];
}
