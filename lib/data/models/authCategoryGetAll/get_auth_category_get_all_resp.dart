class GetAuthCategoryGetAllResp {
  List<Data>? data;

  GetAuthCategoryGetAllResp({this.data});

  GetAuthCategoryGetAllResp.fromJson(Map<String, dynamic> json) {
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
  String? categoryName;
  String? image;
  int? sV;

  Data({this.sId, this.categoryName, this.image, this.sV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    categoryName = json['categoryName'];
    image = json['image'];
    sV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (sId != null) {
      data['_id'] = sId;
    }
    if (categoryName != null) {
      data['categoryName'] = categoryName;
    }
    if (image != null) {
      data['image'] = image;
    }
    if (sV != null) {
      data['__v'] = sV;
    }
    return data;
  }
}
