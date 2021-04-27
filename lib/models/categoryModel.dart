import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/models/productModel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryModel {
  final String name;
  final IconData icon;
  bool selected;
  final int id;
  List<ProductModel> productsList;

  CategoryModel({this.name, this.icon, this.selected, this.id, this.productsList});
}

List<CategoryModel> categoryInfo = [
  CategoryModel(
    name: "Chair",
    icon: Icons.wheelchair_pickup,
    selected: false,
    id: 0,
    productsList: chairProducts
  ),
  CategoryModel(
      name: "Sofa",
      icon: Icons.message,
      selected: false,
      id: 1,
     productsList: sofaProducts
  ),
  CategoryModel(
      name: "Lamp",
      icon: Icons.camera,
      selected: false,
      id: 2,
      productsList: lampProducts
  ),
  CategoryModel(
      name: "Bed",
      icon: FontAwesomeIcons.chair,
      selected: false,
      id: 3,
      productsList: bedProducts
  ),
  CategoryModel(
      name: "desk",
      icon: FontAwesomeIcons.chair,
      selected: false,
      id: 4,
      productsList: deskProducts
  ),
];