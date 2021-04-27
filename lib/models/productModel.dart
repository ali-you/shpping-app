import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductModel {
  final String name;
  final List<String> imageUrl;
  final String description;
  final String price;
  final int categoryId;
  bool liked;
  int counter;
  bool selected;

  ProductModel({this.name, this.imageUrl, this.description, this.price, this.categoryId, this.liked, this.counter, this.selected});
}

List<ProductModel> chairProducts = [
  ProductModel(
      name: "Lyrra Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "In a best traditions, constructed of hard wood with.",
      price: "\$244",
      categoryId: 0,
      liked: false,
      counter: 0,
      selected: false
  ),
  ProductModel(
      name: "Aoij Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 0,
      liked: false,
      counter: 0,
      selected: false
  ),
  ProductModel(
      name: "Bfsd Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 0,
      liked: false,
      counter: 0,
      selected: false
  ),
  ProductModel(
      name: "Cdkfj Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 0,
      liked: false,
      counter: 0,
      selected: false
  ),

];


List<ProductModel> sofaProducts = [
  ProductModel(
      name: "Lyrra Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 1,
      liked: false,
      counter: 0,
      selected: false
  ),
  ProductModel(
      name: "Aoij Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 1,
      liked: false,
      counter: 0,
      selected: false
  ),
  ProductModel(
      name: "Bfsd Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 1,
      liked: false,
      counter: 0,
      selected: false
  ),
  ProductModel(
      name: "Cdkfj Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 1,
      liked: false,
      counter: 0,
      selected: false
  ),
];

List<ProductModel> lampProducts = [
  ProductModel(
      name: "Lyrra Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 2,
      liked: false,
      counter: 0,
      selected: false
  ),
  ProductModel(
      name: "Aoij Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 2,
      liked: false,
      counter: 0,
      selected: false
  ),
  ProductModel(
      name: "Bfsd Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 2,
      liked: false,
      counter: 0,
      selected: false
  ),
  ProductModel(
      name: "Cdkfj Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 2,
      liked: false,
      counter: 0,
      selected: false
  ),
];


List<ProductModel> bedProducts = [
  ProductModel(
      name: "Lyrra Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 3,
      liked: false,
      counter: 0,
      selected: false
  ),
  ProductModel(
      name: "Aoij Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 3,
      liked: false,
      counter: 0,
      selected: false
  ),
  ProductModel(
      name: "Bfsd Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 3,
      liked: false,
      counter: 0,
      selected: false
  ),
  ProductModel(
      name: "Cdkfj Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 3,
      liked: false,
      counter: 0,
      selected: false
  ),
];

List<ProductModel> deskProducts = [
  ProductModel(
      name: "Lyrra Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 4,
      liked: false,
      counter: 0,
      selected: false
  ),
  ProductModel(
      name: "Aoij Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 4,
      liked: false,
      counter: 0,
      selected: false
  ),
  ProductModel(
      name: "Bfsd Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 4,
      liked: false,
      counter: 0,
      selected: false
  ),
  ProductModel(
      name: "Cdkfj Chair",
      imageUrl: [
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515899.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-products/1515810.jpg?x-oss-process=image/resize,h_1600/quality,q_80",
      ],
      description: "Ergonomical for humans body curve",
      price: "\$244",
      categoryId: 4,
      liked: false,
      counter: 0,
      selected: false
  ),
];