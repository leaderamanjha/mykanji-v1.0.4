import '../../../core/app_export.dart';

/// This class is used in the [productcard1_item_widget] screen.
class Productcard1ItemModel {
  Productcard1ItemModel({
    this.image,
    this.title,
    this.price,
    this.id,
  }) {
    image = image ?? Rx("...");
    title = title ?? Rx("Zari Pure Silk ");
    price = price ?? Rx("₹3,500");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? title;

  Rx<String>? price;

  Rx<String>? id;
}
