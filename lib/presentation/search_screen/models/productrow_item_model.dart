import '../../../core/app_export.dart';

/// This class is used in the [productrow_item_widget] screen.
class ProductrowItemModel {
  ProductrowItemModel({
    this.productName,
    this.todayDate,
    this.id,
  }) {
    productName = productName ?? Rx("Product Name");
    todayDate = todayDate ?? Rx("Today");
    id = id ?? Rx("");
  }

  Rx<String>? productName;

  Rx<String>? todayDate;

  Rx<String>? id;
}
