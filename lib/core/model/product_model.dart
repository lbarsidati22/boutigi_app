// product_model.dart (الموديل المُبسط)

import 'package:boutigi_app/core/entities/product_entity.dart';

class ProductModel {
  final String id;
  final String name;
  final String code;
  final String description;
  final num price;
  final bool isFeatured;
  final String? imageUrl;
  final int expirationsMonths;
  final bool isOrganic;
  final int numberOfCalories;

  // حقول التقييمات والمبيعات التي يتم جلبها مباشرة من الجدول
  final num avgRating;
  final int ratingCount;
  final int unitAmount;
  final int sellingCount;

  ProductModel({
    required this.id,
    required this.name,
    required this.code,
    required this.description,
    required this.expirationsMonths,
    required this.numberOfCalories,
    required this.unitAmount,
    required this.price,
    required this.sellingCount,
    required this.isOrganic,
    required this.isFeatured,
    this.imageUrl,
    required this.avgRating,
    required this.ratingCount,
  });

  factory ProductModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return ProductModel(
      id: json['id'] as String,
      name: json['name'] as String,
      code: json['code'] as String,
      description: json['description'] as String,
      price: json['price'] as num,
      isOrganic: json['is_organic'] as bool,
      expirationsMonths:
          json['expirations_months'] as int,
      numberOfCalories:
          json['number_of_calories'] as int,
      unitAmount: json['unit_amount'] as int,
      isFeatured: json['is_featured'] as bool,
      imageUrl: json['image_url'] as String?,
      sellingCount: json['selling_count'] as int,

      avgRating: json['avg_rating'] as num,
      ratingCount: json['rating_count'] as int,
    );
  }

  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      name: name,
      code: code,
      description: description,
      price: price,
      isFeatured: isFeatured,
      imageUrl: imageUrl,
      expirationsMonths: expirationsMonths,
      isOrganic: isOrganic,
      numberOfCalories: numberOfCalories,
      unitAmount: unitAmount,
      sellingCount: sellingCount,
      avgRating: avgRating,
      ratingCount: ratingCount,
    );
  }
}
