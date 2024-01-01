import 'pexelsphotoby_item_model.dart';
import '../../../core/app_export.dart';
import 'productlistinglist_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<PexelsphotobyItemModel>> pexelsphotobyItemList =
      Rx(List.generate(1, (index) => PexelsphotobyItemModel()));

  Rx<List<ProductlistinglistItemModel>> productlistinglistItemList = Rx([
    ProductlistinglistItemModel(
        title: "Buy or Sell products".obs,
        description: "List & browse items for sale locally with ease.".obs,
        image: ImageConstant.imgBag.obs),
    ProductlistinglistItemModel(
        title: "Upcycle Services".obs,
        description: "Give your old clothes a second chance.".obs,
        image: ImageConstant.imgTelevisionBlueGray700.obs),
    ProductlistinglistItemModel(
        title: "Restore Services".obs,
        description: "Revive your clothes without leaving home.".obs,
        image: ImageConstant.imgUser.obs)
  ]);
}
