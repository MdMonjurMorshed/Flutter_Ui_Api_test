import 'package:get/get.dart';
import 'package:test_application/models/productList_model.dart';

import '../../repositories/product_repo.dart';

class ProductController extends GetxController {
  List<Product> productList = [];

  final repo = ProductRepository();
// getting the json data and making list of objects here.
  getRepositoryData() async {
    final data = await repo.getProduct();
    final product = data['ProductList'];

    for (int i = 0; i < product.length; i++) {
      productList.add(Product(
          id: product[i]['Id'],
          type: product[i]['Type'],
          parentCode: product[i]['ParentCode'],
          name: product[i]['Name'],
          code: product[i]['Code'],
          price: product[i]['Price'],
          costPrice: product[i]['CostPrice'],
          unitName: product[i]['UnitName'],
          categoryName: product[i]['CategoryName'],
          brandName: product[i]['BrandName'],
          modelName: product[i]['Modelname'],
          variantName: product[i]['VariantName'],
          sizeName: product[i]['SizeName'],
          colorName: product[i]['ColorName'],
          oldPrice: product[i]['OldPrice'],
          imagePath: product[i]['ImagePath'],
          productBarCode: product[i]['ProductBarCode'],
          description: product[i]['Description'],
          childList: product[i]['ChildList'],
          warehouseList: product[i]['WarehouseList'],
          currentStock: product[i]['CurrentStock'],
          createDate: product[i]['CreateDate'],
          updateDate: product[i]['UpdateDate']));
    }
  }
}
