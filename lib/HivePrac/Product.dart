import 'package:hive/hive.dart';
part 'Product.g.dart';


@HiveType(typeId: 1)
class Product extends HiveObject {
  @HiveField(0)
  int productId;
  @HiveField(1)
  String name;
  @HiveField(2)
  String mainImageUrl;
  @HiveField(3)
  double cost;
  @HiveField(4)
  double offPercent;
  @HiveField(5)
  int counter;

  Product(
      {this.productId,
      this.name,
      this.mainImageUrl,
      this.cost,
      this.offPercent,
      this.counter});
}

List<Product> productInfo = [
  Product(
      productId: 4839,
      name: "پودر خامه كيك و شيريني با طعم وانيل فلورا- 200 گرم",
      mainImageUrl:
          "http://37.152.187.237:7070/image/y4_k2si6wl1x5s/2e86d7da967fae395fe75429dcde8701_sm",
      cost: 411,
      offPercent: 15,
      counter: 0),
  Product(
      productId: 4838,
      name: "پودر كيك رد ولوت رشد مقدار 600 گرم",
      mainImageUrl:
          "http://37.152.187.237:7070/image/y4_k2si6wl1x5s/7d02c074b5b97d987d132fa108a9adf4_sm",
      cost: null,
      offPercent: null,
      counter: 0),
  Product(
      productId: 4837,
      name: "پودر كيك وانيلي رشد - 500 گرم",
      mainImageUrl:
          "http://37.152.187.237:7070/image/y4_k2si6wl1x5s/d274e23b9cb23503c75a49813780e33f_sm",
      cost: 12800,
      offPercent: 10,
      counter: 0),
  Product(
      productId: 4836,
      name: "ارد نشاسته تردك - 200 گرم",
      mainImageUrl:
          "http://37.152.187.237:7070/image/y4_k2si6wl1x5s/8a48c3067fff740d4af2ae2932504270_sm",
      cost: 25000,
      offPercent: 10,
      counter: 0),
  Product(
      productId: 4835,
      name: "ارد ذرت ارينا - 200 گرم",
      mainImageUrl:
          "http://37.152.187.237:7070/image/y4_k2si6wl1x5s/d1c9bf9aa5d501f67679b38ce6b5b5f7_sm",
      cost: null,
      offPercent: null,
      counter: 0),
  Product(
      productId: 4834,
      name: "ارد ذرت برتر مقدار 200 گرم",
      mainImageUrl:
          "http://37.152.187.237:7070/image/y4_k2si6wl1x5s/f9327cdbc7437cd486743eb4d5e80bb5_sm",
      cost: null,
      offPercent: null,
      counter: 0),
  Product(
      productId: 3693,
      name: "كنسرو مرغ شيلانه - 150 گرم",
      mainImageUrl:
          "http://37.152.187.237:7070/image/y4_k2si6wl1x5s/91a6727f006dba2c023d35f3eb3a57e6_sm",
      cost: 13750,
      offPercent: 40,
      counter: 0),
  Product(
      productId: 3692,
      name: "كنسرو مرغ در روغن شيلتون وزن 180 گرم",
      mainImageUrl:
          "http://37.152.187.237:7070/image/y4_k2si6wl1x5s/14d2c6060d9a994e30b2d27d2895bb65_sm",
      cost: 15000,
      offPercent: 0,
      counter: 0),
  Product(
      productId: 3691,
      name: "كنسرو مرغ چينود وزن 150 گرم",
      mainImageUrl:
          "http://37.152.187.237:7070/image/y4_k2si6wl1x5s/3676d3816d8460f74b86c4a74e5f482d_sm",
      cost: 15800,
      offPercent: 0,
      counter: 0),
  Product(
      productId: 3690,
      name: "كنسرو مرغ سالي - 150 گرم",
      mainImageUrl:
          "http://37.152.187.237:7070/image/y4_k2si6wl1x5s/7dec68febe3c4ac780d168b06120eb4c_sm",
      cost: 14000,
      offPercent: 0,
      counter: 0)
];
