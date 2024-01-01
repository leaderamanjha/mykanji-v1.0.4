import '../search_screen/widgets/productrow_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/productrow_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/appbar_subtitle.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanji/widgets/custom_search_view.dart';

class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: 412.h,
                padding: EdgeInsets.all(16.h),
                child: Column(children: [
                  CustomSearchView(
                      controller: controller.searchController,
                      hintText: "msg_hinted_search_text".tr),
                  SizedBox(height: 26.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_recent_searches".tr,
                          style: CustomTextStyles.titleMediumGray80002)),
                  SizedBox(height: 27.v),
                  _buildProductRow()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_search".tr),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildProductRow() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 18.v);
        },
        itemCount:
            controller.searchModelObj.value.productrowItemList.value.length,
        itemBuilder: (context, index) {
          ProductrowItemModel model =
              controller.searchModelObj.value.productrowItemList.value[index];
          return ProductrowItemWidget(model);
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
