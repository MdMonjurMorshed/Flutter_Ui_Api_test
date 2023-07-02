import 'dart:convert';

class Product {
  int id;
  String? type;
  String? parentCode;
  String name;
  String code;
  double price;
  double costPrice;
  String unitName;
  String? categoryName;
  String brandName;
  String? modelName;
  String variantName;
  String sizeName;
  String? colorName;
  double oldPrice;
  String? imagePath;
  String? productBarCode;
  String? description;
  List<dynamic>? childList;
  List<dynamic>? warehouseList;
  double? currentStock;
  String? createDate;
  String? updateDate;

  Product(
      {required this.id,
      required this.type,
      required this.parentCode,
      required this.name,
      required this.code,
      required this.price,
      required this.costPrice,
      required this.unitName,
      required this.categoryName,
      required this.brandName,
      required this.modelName,
      required this.variantName,
      required this.sizeName,
      required this.colorName,
      required this.oldPrice,
      required this.imagePath,
      required this.productBarCode,
      required this.description,
      required this.childList,
      required this.warehouseList,
      required this.currentStock,
      required this.createDate,
      required this.updateDate});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['Id'],
        type: json['Type'],
        parentCode: json['ParentCode'],
        name: json['Name'],
        code: json['Code'],
        price: json['Price'],
        costPrice: json['CostPrice'],
        unitName: json['UnitName'],
        categoryName: json['Category'],
        brandName: json['BrandName'],
        modelName: json['Modelname'],
        variantName: json['VariantName'],
        sizeName: json['SizeName'],
        colorName: json['ColorName'],
        oldPrice: json['OldPrice'],
        imagePath: json['Imagepath'],
        productBarCode: json['ProductBarCode'],
        description: json['Description'],
        childList: json['ChildList'],
        warehouseList: json['WarehouseList'],
        currentStock: json['CurrentStock'],
        createDate: json['CreateDate'],
        updateDate: json['UpdateDate']);
  }
}

class PageInfo {
  int pageNumber;
  int pagesize;
  int pageCount;
  int totalRecord;
  PageInfo(
      {required this.pageNumber,
      required this.pagesize,
      required this.pageCount,
      required this.totalRecord});

  factory PageInfo.fromJson(Map<String, dynamic> json) {
    return PageInfo(
        pageNumber: json['PageNo'],
        pagesize: json['PageSize'],
        pageCount: json['PageCount'],
        totalRecord: json['TotalRecordCount']);
  }
}
