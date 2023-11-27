import 'package:state_manager_impl/flavor_model.dart';
import 'package:state_manager_impl/product_model.dart';

const List<ProductModel> products = [
  ProductModel(
    id: "1",
    name: "Mie Ayam",
    quantity: 3,
    flavors: [
      IncrementModel(id: "1", name: "Manis"),
      IncrementModel(id: "2", name: "Pedas"),
      IncrementModel(id: "3", name: "Asin"),
    ],
  ),
  ProductModel(
    id: "2",
    name: "Nasi Goreng",
    quantity: 2,
    flavors: [
      IncrementModel(id: "1", name: "Telur"),
      IncrementModel(id: "2", name: "Bakso"),
      IncrementModel(id: "3", name: "Sosis"),
    ],
  ),
];
