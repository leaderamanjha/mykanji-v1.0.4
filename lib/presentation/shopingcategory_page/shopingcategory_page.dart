import '../shopingcategory_page/widgets/stackedcardgrid_item_widget.dart';
import 'controller/shopingcategory_controller.dart';
import 'models/shopingcategory_model.dart';
import 'models/stackedcardgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ShopingcategoryPage extends StatelessWidget {
  ShopingcategoryPage({Key? key}) : super(key: key);

  ShopingcategoryController controller =
      Get.put(ShopingcategoryController(ShopingcategoryModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 412.h,
                decoration: AppDecoration.fillOnErrorContainer,
                child: Column(children: [
                  SizedBox(height: 20.v),
                  _buildStackedCardGrid()
                ]))));
  }

  /// Section Widget
  Widget _buildStackedCardGrid() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Obx(() => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 259.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 16.h,
                    crossAxisSpacing: 16.h),
                physics: BouncingScrollPhysics(),
                itemCount: controller.shopingcategoryModelObj.value
                    .stackedcardgridItemList.value.length,
                itemBuilder: (context, index) {
                  StackedcardgridItemModel model = controller
                      .shopingcategoryModelObj
                      .value
                      .stackedcardgridItemList
                      .value[index];
                  return StackedcardgridItemWidget(model, onTapStackedCard: () {
                    onTapStackedCard();
                  });
                }))));
  }

  /// Navigates to the productscreenContainer1Screen when the action is triggered.
  onTapStackedCard() {
    Get.toNamed(AppRoutes.productscreenContainer1Screen);
  }
}
