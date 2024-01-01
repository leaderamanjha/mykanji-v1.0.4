import '../productscreen_container_page/widgets/productcard_item_widget.dart';
import 'controller/productscreen_container_controller.dart';
import 'models/productcard_item_model.dart';
import 'models/productscreen_container_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';
import 'package:mykanji/widgets/custom_icon_button.dart';
import 'package:mykanji/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ProductscreenContainerPage extends StatelessWidget {
  ProductscreenContainerPage({Key? key}) : super(key: key);

  ProductscreenContainerController controller = Get.put(
      ProductscreenContainerController(ProductscreenContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: 412.h,
                decoration: AppDecoration.fillOnErrorContainer,
                child: Column(children: [
                  SizedBox(height: 10.v),
                  _buildMainColumn(),
                  SizedBox(height: 16.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 5.v),
                              child: Column(children: [
                                CustomSearchView(
                                    controller: controller.searchController,
                                    hintText: "msg_hinted_search_text".tr),
                                SizedBox(height: 20.v),
                                _buildProductCardColumn(),
                                SizedBox(height: 12.v),
                                _buildAddToCartColumn()
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildMainColumn() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20.v),
        decoration: AppDecoration.fillGray5001,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomAppBar(
              height: 24.v,
              leadingWidth: 412.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgIcon,
                  margin: EdgeInsets.fromLTRB(20.h, 4.v, 376.h, 4.v),
                  onTap: () {
                    onTapIcon();
                  })),
          SizedBox(height: 51.v),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child:
                  Text("lbl_sarees".tr, style: theme.textTheme.headlineMedium)),
          SizedBox(height: 11.v)
        ]));
  }

  /// Section Widget
  Widget _buildProductCardColumn() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_new_listing".tr, style: CustomTextStyles.bodyLargeBlack900),
      SizedBox(height: 7.v),
      SizedBox(
          height: 258.v,
          child: Obx(() => ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 8.h);
              },
              itemCount: controller.productscreenContainerModelObj.value
                  .productcardItemList.value.length,
              itemBuilder: (context, index) {
                ProductcardItemModel model = controller
                    .productscreenContainerModelObj
                    .value
                    .productcardItemList
                    .value[index];
                return ProductcardItemWidget(model);
              })))
    ]);
  }

  /// Section Widget
  Widget _buildAddToCartButton() {
    return CustomElevatedButton(
        height: 33.v,
        width: 127.h,
        text: "lbl_add_to_cart".tr,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray700,
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildAddToCartButton1() {
    return CustomElevatedButton(
        height: 33.v,
        width: 127.h,
        text: "lbl_add_to_cart".tr,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray700,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildAddToCartButton2() {
    return CustomElevatedButton(
        height: 33.v,
        width: 127.h,
        text: "lbl_add_to_cart".tr,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray700,
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildAddToCartButton3() {
    return CustomElevatedButton(
        height: 33.v,
        width: 127.h,
        text: "lbl_add_to_cart".tr,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray700,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildAddToCartColumn() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_all_listing".tr, style: CustomTextStyles.bodyLargeBlack900),
      SizedBox(height: 8.v),
      Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 198.v,
                        width: 186.h,
                        child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              _buildMedia(),
                              _buildAddToCartButton()
                            ])),
                    SizedBox(height: 2.v),
                    Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text("lbl_sarees_3".tr,
                            style: theme.textTheme.bodyLarge)),
                    SizedBox(height: 3.v),
                    Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text("lbl_3_500".tr,
                            style: theme.textTheme.bodyMedium)),
                    SizedBox(height: 16.v)
                  ])),
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.gray300,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder12),
              child: Container(
                  height: 258.v,
                  width: 186.h,
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12),
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMedia182x182,
                        height: 182.v,
                        width: 186.h,
                        alignment: Alignment.topCenter),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomIconButton(
                                      height: 36.adaptSize,
                                      width: 36.adaptSize,
                                      padding: EdgeInsets.all(8.h),
                                      alignment: Alignment.centerRight,
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgWishlistPro)),
                                  SizedBox(height: 113.v),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildAddToCartButton1(),
                                        SizedBox(height: 2.v),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_sarees_4".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge),
                                              SizedBox(height: 3.v),
                                              Text("lbl_3_500".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium)
                                            ])
                                      ])
                                ])))
                  ])))
        ]),
        SizedBox(height: 8.v),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 198.v,
                        width: 186.h,
                        child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              _buildMedia(),
                              _buildAddToCartButton2()
                            ])),
                    SizedBox(height: 2.v),
                    Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text("lbl_sarees_5".tr,
                            style: theme.textTheme.bodyLarge)),
                    SizedBox(height: 3.v),
                    Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text("lbl_3_500".tr,
                            style: theme.textTheme.bodyMedium)),
                    SizedBox(height: 16.v)
                  ])),
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.gray300,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder12),
              child: Container(
                  height: 258.v,
                  width: 186.h,
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12),
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMedia182x182,
                        height: 182.v,
                        width: 186.h,
                        alignment: Alignment.topCenter),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomIconButton(
                                      height: 36.adaptSize,
                                      width: 36.adaptSize,
                                      padding: EdgeInsets.all(8.h),
                                      alignment: Alignment.centerRight,
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgWishlistPro)),
                                  SizedBox(height: 113.v),
                                  _buildAddToCartButton3(),
                                  SizedBox(height: 2.v),
                                  Text("lbl_sarees_6".tr,
                                      style: theme.textTheme.bodyLarge),
                                  SizedBox(height: 3.v),
                                  Text("lbl_3_500".tr,
                                      style: theme.textTheme.bodyMedium)
                                ])))
                  ])))
        ])
      ])
    ]);
  }

  /// Common widget
  Widget _buildMedia() {
    return SizedBox(
        height: 182.v,
        width: 186.h,
        child: Stack(alignment: Alignment.topRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMedia182x182,
              height: 182.v,
              width: 186.h,
              alignment: Alignment.center),
          Padding(
              padding: EdgeInsets.only(top: 16.v, right: 16.h),
              child: CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  alignment: Alignment.topRight,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgWishlistPro)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapIcon() {
    Get.back();
  }
}
