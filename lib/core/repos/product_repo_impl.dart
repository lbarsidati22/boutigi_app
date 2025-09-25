import 'package:boutigi_app/core/api/api_result.dart';
import 'package:boutigi_app/core/entities/product_entity.dart';
import 'package:boutigi_app/core/repos/product_repo.dart';

class ProductRepoImpl implements ProductsRepo {
  @override
  Future<ApiResult<List<ProductEntity>>>
  getBestSellingProducts() {
    // TODO: implement getBestSellingProducts
    throw UnimplementedError();
  }

  @override
  Future<ApiResult<List<ProductEntity>>>
  getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }
}
