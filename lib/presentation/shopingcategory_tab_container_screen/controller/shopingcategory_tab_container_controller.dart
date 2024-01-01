import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/shopingcategory_tab_container_screen/models/shopingcategory_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ShopingcategoryTabContainerScreen.
///
/// This class manages the state of the ShopingcategoryTabContainerScreen, including the
/// current shopingcategoryTabContainerModelObj
class ShopingcategoryTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ShopingcategoryTabContainerModel> shopingcategoryTabContainerModelObj =
      ShopingcategoryTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
