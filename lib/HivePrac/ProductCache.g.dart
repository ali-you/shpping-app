// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProductCache.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductCacheAdapter extends TypeAdapter<ProductCache> {
  @override
  final int typeId = 2;

  @override
  ProductCache read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductCache(
      cacheList: (fields[0] as List)?.cast<Product>(),
    );
  }

  @override
  void write(BinaryWriter writer, ProductCache obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.cacheList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductCacheAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
