import 'package:boutigi_app/core/api/api_result.dart';
import 'package:boutigi_app/core/entities/product_entity.dart';

abstract class ProductsRepo {
  Future<ApiResult<List<ProductEntity>>>
  getProducts();
  Future<ApiResult<List<ProductEntity>>>
  getBestSellingProducts();
}
