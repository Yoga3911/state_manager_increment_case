import 'package:state_manager_impl/flavor_model.dart';

class ProductModel {
  final String id;
  final String name;
  final int quantity;
  final List<IncrementModel> flavors;

  const ProductModel({
    required this.id,
    required this.name,
    required this.quantity,
    required this.flavors,
  });
}
