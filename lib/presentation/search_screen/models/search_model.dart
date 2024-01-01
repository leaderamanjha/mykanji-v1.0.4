import '../../../core/app_export.dart';
import 'productrow_item_model.dart';

/// This class defines the variables used in the [search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {
  Rx<List<ProductrowItemModel>> productrowItemList = Rx([
    ProductrowItemModel(
        productName: "Product Name".obs, todayDate: "Today".obs),
    ProductrowItemModel(
        productName: "Product Name".obs, todayDate: "Yesterday".obs),
    ProductrowItemModel(
        productName: "Product Name".obs, todayDate: "5 Day ago".obs),
    ProductrowItemModel(
        productName: "Product Name".obs, todayDate: "5 Day ago".obs),
    ProductrowItemModel(
        productName: "Product Name".obs, todayDate: "5 Day ago".obs),
    ProductrowItemModel(
        productName: "Product Name".obs, todayDate: "5 Day ago".obs)
  ]);
}
