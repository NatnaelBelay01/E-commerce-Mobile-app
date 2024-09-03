import 'package:equatable/equatable.dart';




class Product extends Equatable{
	final String name;
	final String id;
	final String description;
	final String imageUrl;
	final double price;

	const Product({
		required this.name,
		required this.id,
		required this.description,
		required this.price,
		required this.imageUrl,
	});

  @override
  List<Object?> get props => [
		name,
		id,
		description,
		price,
		imageUrl,
	];
}
