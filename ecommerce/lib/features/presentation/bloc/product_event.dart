import 'package:ecommerce/features/domain/entities/productentity.dart';
import 'package:equatable/equatable.dart';

abstract class ProductEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadAllProductEvent extends ProductEvent {}

class GetSingleProductEvent extends ProductEvent {
  final String productId;

  GetSingleProductEvent(this.productId);
  @override
  List<Object> get props => [productId];
}

class UpdateProductEvent extends ProductEvent {
  final Product product;

  UpdateProductEvent(this.product);

  @override
  List<Object> get props => [product];
}

class DeleteProductEvent extends ProductEvent {
  final String productId;

  DeleteProductEvent(this.productId);

  @override
  List<Object> get props => [productId];
}

class CreateProductEvent extends ProductEvent {
  final Product product;

  CreateProductEvent(this.product);

  @override
  List<Object> get props => [product];
}
