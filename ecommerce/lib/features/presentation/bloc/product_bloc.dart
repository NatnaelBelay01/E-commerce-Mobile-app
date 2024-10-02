import 'package:bloc/bloc.dart';
import 'package:ecommerce/features/domain/usecase/createproduct.dart';
import 'package:ecommerce/features/domain/usecase/deleteproduct.dart';
import 'package:ecommerce/features/domain/usecase/updateproduct.dart';
import 'package:ecommerce/features/domain/usecase/viewallproducts.dart';
import 'package:ecommerce/features/domain/usecase/viewproduct.dart';
import 'package:ecommerce/features/presentation/bloc/product_event.dart';
import 'package:ecommerce/features/presentation/bloc/product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final CreateProductUseCase createProductUseCase;
  final DeleteProductUseCase deleteProductUseCase;
  final UpdateProductUseCase updateProductUseCase;
  final ViewAllProductUseCase viewAllProductUseCase;
  final ViewProductUseCase viewProductUseCase;

  ProductBloc({
    required this.viewProductUseCase,
    required this.viewAllProductUseCase,
    required this.deleteProductUseCase,
    required this.updateProductUseCase,
    required this.createProductUseCase,
  }) : super(InitialState()) {
    on<LoadAllProductEvent>((event, emit) async {
      emit(LoadingState());
      final result = await viewAllProductUseCase();
      result.fold(
        (failure) => emit(ErrorState('Error loading Products')),
        (products) => emit(LoadedAllProductState(products)),
      );
    });

    on<GetSingleProductEvent>((event, emit) async {
      emit(LoadingState());
      final result = await viewProductUseCase(event.productId);
      result.fold(
        (failure) => emit(ErrorState('Error loading product')),
        (product) => emit(LoadedSingleProductState(product)),
      );
    });

    on<UpdateProductEvent>((event, emit) async {
      emit(LoadingState());
      final result = await updateProductUseCase(event.product);
      result.fold(
        (failure) => emit(ErrorState('Error updating product')),
        (product) async {
          final viewresult = await viewProductUseCase(product.id);
          viewresult.fold(
            (fail) => emit(ErrorState('Error loading product')),
            (prod) => emit(LoadedSingleProductState(prod)),
          );
        },
      );
    });

    on<DeleteProductEvent>((event, emit) async {
      emit(LoadingState());
      final result = await deleteProductUseCase(event.productId);
      result.fold((failure) => emit(ErrorState('Error deleting product')),
          (_) async {
        final viewresults = await viewAllProductUseCase();
        viewresults.fold(
          (failure) => emit(ErrorState('Error loading products')),
          (products) => emit(LoadedAllProductState(products)),
        );
      });
    });

    on<CreateProductEvent>((event, emit) async {
      emit(LoadingState());
      final result = await createProductUseCase(event.product);
      result.fold((failure) => emit(ErrorState('Error creating Product')),
          (product) async {
        final viewresult = await viewProductUseCase(product.id);
        viewresult.fold(
          (fail) => emit(ErrorState('Error loading product')),
          (prod) => emit(LoadedSingleProductState(prod)),
        );
      });
    });
  }
}
