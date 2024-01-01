import '../../../core/app_export.dart';

/// This class is used in the [productlistinglist_item_widget] screen.
class ProductlistinglistItemModel {
  ProductlistinglistItemModel({
    this.title,
    this.description,
    this.image,
    this.id,
  }) {
    title = title ?? Rx("Buy or Sell products");
    description =
        description ?? Rx("List & browse items for sale locally with ease.");
    image = image ?? Rx(ImageConstant.imgBag);
    id = id ?? Rx("");
  }

  Rx<String>? title;

  Rx<String>? description;

  Rx<String>? image;

  Rx<String>? id;
}
