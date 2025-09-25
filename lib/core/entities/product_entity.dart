class ProductEntity {
  // 1. إضافة ID المنتج
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

  // 2. إزالة الثوابت وتحويلها إلى حقول مطلوبة (مستلمة من الـ Repo)
  final num avgRating;
  final int ratingCount;

  final int unitAmount;

  // 3. إضافة sellingCount
  final int sellingCount;

  // 4. (تم إزالة reviews مؤقتًا، ويمكن إعادتها عند الحاجة)
  // final List<ReviewEntity> reviews;

  ProductEntity({
    required this.id, // ID مطلوب
    required this.name,
    required this.code,
    required this.description,
    required this.price,
    required this.expirationsMonths,
    required this.numberOfCalories,
    required this.unitAmount,
    required this.sellingCount, // مطلوب
    required this.avgRating, // مطلوب
    required this.ratingCount, // مطلوب
    this.isOrganic = false,
    required this.isFeatured,
    this.imageUrl,
    // تم إزالة reviews مؤقتًا
  });
}
