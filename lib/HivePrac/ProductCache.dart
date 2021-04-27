import 'package:flutter_app1/HivePrac/Product.dart';
import 'package:hive/hive.dart';
part 'ProductCache.g.dart';


@HiveType(typeId: 2)
class ProductCache extends HiveObject {
  @HiveField(0)
  final List<Product> cacheList;
  ProductCache(
      {this.cacheList});
}