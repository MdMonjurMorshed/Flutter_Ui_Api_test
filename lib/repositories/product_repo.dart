import 'package:test_application/models/productList_model.dart';
import 'dart:convert';

import 'package:http/http.dart';

class ProductRepository {
  String uri = 'https://pqstec.com/invoiceapps/Values/GetProductList';
  String token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiI0MTMiLCJDdXJyZW50Q29tSWQiOiIxIiwibmJmIjoxNjg3Nzc2NTE5LCJleHAiOjE2ODgzODEzMTksImlhdCI6MTY4Nzc3NjUxOX0.yiPbIsg8KAp-4Nld47liKkhvRdsbLCdrnD53Vrdd8H4';

// decoding json data from the server
// used controller to make the product view. @ product_controller
  Future<Map<String, dynamic>> getProduct() async {
    var response = await get(Uri.parse(uri), headers: {'Authorization': token});
    if (response.statusCode == 200) {
      final decode = jsonDecode(response.body);
      print(decode);
      return decode;
    } else {
      throw 'something went wrong';
    }
  }
}
