import '../../../core/app_export.dart';
import 'stackedcardgrid_item_model.dart';

/// This class defines the variables used in the [shopingcategory_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ShopingcategoryModel {
  Rx<List<StackedcardgridItemModel>> stackedcardgridItemList = Rx([
    StackedcardgridItemModel(
        titleText: "Sarees".obs, subheadText: "225 Products".obs),
    StackedcardgridItemModel(
        titleText: "Skirt".obs, subheadText: "105 Products".obs),
    StackedcardgridItemModel(
        titleText: "Chudidhar".obs, subheadText: "15 Products".obs),
    StackedcardgridItemModel(
        titleText: "Blouse".obs, subheadText: "165 Products".obs),
    StackedcardgridItemModel(
        titleText: "Palazzo".obs, subheadText: "25 Products".obs),
    StackedcardgridItemModel(
        titleText: "Pant".obs, subheadText: "250 Products".obs)
  ]);
}
