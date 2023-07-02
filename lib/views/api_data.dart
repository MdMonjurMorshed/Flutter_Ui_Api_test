import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:test_application/controllers/controller/cart_controller.dart';
import 'package:test_application/controllers/controller/product_controller.dart';
import 'package:test_application/themes/theme.dart';

class ApiData extends StatelessWidget {
  ApiData({super.key});
  final productController = Get.find<ProductController>();
  final cartController = Get.find<CartController>();
  @override
  Widget build(BuildContext context) {
    // height and width to make application resposive
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Api data view'),
        centerTitle: true,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 250),
        children: List.generate(productController.productList.length, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Apptheme.appColor.apiGridColor,
                    boxShadow: [
                      BoxShadow(
                          color: Apptheme.appColor.splashBackColor,
                          blurRadius: 2,
                          spreadRadius: .2)
                    ]),
                width: width / 2.3,
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              productController.productList[index].imagePath !=
                                      null
                                  ? 'https://pqstec.com/invoiceapps/Values/GetProductList/media${productController.productList[index].imagePath}'
                                  : 'https://www.salonlfc.com/wp-content/uploads/2018/01/image-not-found-scaled-1150x647.png',
                            ),
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      width: width / 2.16,
                      height: height / 6.5,
                    )),
                    Positioned(
                        top: 5,
                        right: 5,
                        child: GestureDetector(
                          onTap: () {},
                          child: Icon(Icons.favorite_border_sharp),
                        )),
                    Positioned(
                        left: width / 9,
                        top: height / 6.5,
                        child: Text(
                          productController.productList[index].name,
                          style: Apptheme.appText.apiProductName,
                        )),
                    Positioned(
                        left: width / 10,
                        top: height / 5.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 2),
                              child: Text(
                                '৳ ${productController.productList[index].oldPrice}',
                                style: Apptheme.appText.apiProductOldPrice,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Text(
                                '৳ ${productController.productList[index].price}',
                                style: Apptheme.appText.apiProductPrice,
                              ),
                            )
                          ],
                        )),
                    Positioned(
                        left: 0,
                        bottom: 0,
                        child: cartController.addCart
                            ? GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  height: height / 20,
                                  width: width / 2.16,
                                  child: Center(child: Text('Add To Cart')),
                                ),
                              )
                            : Text('data'))
                  ],
                )),
          );
        }),
      ),
    );
  }
}


// : GestureDetector(
//                                 onTap: () {},
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.only(
//                                           bottomLeft: Radius.circular(10),
//                                           bottomRight: Radius.circular(10))),
//                                   height: height / 20,
//                                   width: width / 2.16,
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Container(
//                                         decoration: BoxDecoration(
//                                             color: Colors.green,
//                                             borderRadius: BorderRadius.only(
//                                               bottomLeft: Radius.circular(10),
//                                             )),
//                                         height: height / 20,
//                                         width: width / 10,
//                                         child: Center(
//                                           child: Icon(Icons.exposure_minus_1),
//                                         ),
//                                       ),
//                                       Container(
//                                           decoration: BoxDecoration(
//                                               border: Border.all(
//                                                   color: Colors.green)),
//                                           height: height / 20,
//                                           width: width / 3.9),
//                                       Container(
//                                           child: Center(
//                                             child: Icon(Icons.plus_one),
//                                           ),
//                                           decoration: BoxDecoration(
//                                               color: Colors.green,
//                                               borderRadius: BorderRadius.only(
//                                                 bottomRight:
//                                                     Radius.circular(10),
//                                               )),
//                                           height: height / 20,
//                                           width: width / 10),
//                                     ],
//                                   ),
//                                 ),
//                               )