import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:test_application/controllers/controller/home_page_controller.dart';
import 'package:test_application/controllers/controller/product_controller.dart';
import 'package:test_application/themes/theme.dart';
import 'package:test_application/views/api_data.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final homePageController = Get.find<HomePageController>();
  final productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    // height and width to make application resposive
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Future.delayed(Duration(seconds: 2));
            Navigator.push(
                context,
                GetPageRoute(
                    page: () => ApiData(),
                    transition: Transition.fadeIn,
                    transitionDuration: Duration(milliseconds: 500)));
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 30),
            child: Image.asset(
              'assets/bar_icon.png',
            ),
          ),
        ),
        title: Image.asset(
          'assets/splash_logo.png',
          height: height / 30,
        ),
        centerTitle: true,
        actions: [
          // padding for vertically align items
          Padding(
            padding: EdgeInsets.symmetric(vertical: height / 100),
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: height / 100,
            ),
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.cartShopping),
              onPressed: () {},
            ),
          )
        ],
      ),

      // SingleChildScrollView for get scroll behavior to see overflown data
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    child: Center(
                      child: CarouselSlider.builder(
                          itemCount: homePageController.imgList.length,
                          itemBuilder: (context, index, _) {
                            return Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width / 50),
                              child: Image(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    homePageController.imgList[index]),
                              ),
                            );
                          },
                          options: CarouselOptions(
                            viewportFraction: 1,
                          )),
                    ),
                  ),
                  Positioned(
                      top: height / 5.5,
                      left: width / 2.3,
                      child: DotsIndicator(
                        decorator: DotsDecorator(
                            size: Size(15, 15),
                            activeColor: Apptheme.appColor.splashBackColor,
                            activeSize: Size(15, 15)),
                        dotsCount: homePageController.imgList.length,
                      ))
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                      homePageController.logo.length,
                      (index) => Column(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            blurRadius: 3,
                                            spreadRadius: .02),
                                      ]),
                                  height: height / 11,
                                  width: width / 5,
                                  child: Center(
                                    child: Image.asset(
                                        homePageController.logo[index]),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Center(
                                  child: Text(
                                    homePageController.title[index],
                                    style: Apptheme.appText.underLogo,
                                  ),
                                ),
                              ),
                            ],
                          )),
                ),
              ),
              Container(
                width: width,
                child: Center(
                  child: Column(
                      children: List.generate(
                    homePageController.product.length,
                    (index) => Card(
                      child: ListTile(
                        leading: SizedBox(
                          height: height / 12,
                          width: width / 6,
                          child: Image.asset(
                              homePageController.product[index].image),
                        ),
                        title: Text(homePageController.product[index].title),
                        subtitle:
                            Text(homePageController.product[index].description),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(homePageController.product[index].icon),
                          ],
                        ),
                      ),
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('this is new page'),
      ),
    );
  }
}
