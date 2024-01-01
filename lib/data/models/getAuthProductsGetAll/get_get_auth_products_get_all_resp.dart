class GetGetAuthProductsGetAllResp {
  List<Data>? data;

  GetGetAuthProductsGetAllResp({this.data});

  GetGetAuthProductsGetAllResp.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? subHeading;
  int? productPrice;
  String? type;
  String? fabric;
  String? printOrPattern;
  String? border;
  String? sizeFit;
  String? description;
  int? productNo;
  String? productsName;
  String? productImage;
  int? sV;

  Data(
      {this.sId,
      this.subHeading,
      this.productPrice,
      this.type,
      this.fabric,
      this.printOrPattern,
      this.border,
      this.sizeFit,
      this.description,
      this.productNo,
      this.productsName,
      this.productImage,
      this.sV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    subHeading = json['subHeading'];
    productPrice = json['productPrice'];
    type = json['type'];
    fabric = json['fabric'];
    printOrPattern = json['printOrPattern'];
    border = json['border'];
    sizeFit = json['sizeFit'];
    description = json['description'];
    productNo = json['product_no'];
    productsName = json['productsName'];
    productImage = json['productImage'];
    sV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (sId != null) {
      data['_id'] = sId;
    }
    if (subHeading != null) {
      data['subHeading'] = subHeading;
    }
    if (productPrice != null) {
      data['productPrice'] = productPrice;
    }
    if (type != null) {
      data['type'] = type;
    }
    if (fabric != null) {
      data['fabric'] = fabric;
    }
    if (printOrPattern != null) {
      data['printOrPattern'] = printOrPattern;
    }
    if (border != null) {
      data['border'] = border;
    }
    if (sizeFit != null) {
      data['sizeFit'] = sizeFit;
    }
    if (description != null) {
      data['description'] = description;
    }
    if (productNo != null) {
      data['product_no'] = productNo;
    }
    if (productsName != null) {
      data['productsName'] = productsName;
    }
    if (productImage != null) {
      data['productImage'] = productImage;
    }
    if (sV != null) {
      data['__v'] = sV;
    }
    return data;
  }
}
