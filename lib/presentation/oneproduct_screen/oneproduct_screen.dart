import '../oneproduct_screen/widgets/productcard1_item_widget.dart';
import '../oneproduct_screen/widgets/thumbnail_item_widget.dart';
import 'controller/oneproduct_controller.dart';
import 'models/productcard1_item_model.dart';
import 'models/thumbnail_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/productscreen_container_page/productscreen_container_page.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:mykanji/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanji/widgets/custom_bottom_bar.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OneproductScreen extends GetWidget<OneproductController> {
  const OneproductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 412.h,
                child: Column(children: [
                  SizedBox(height: 10.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    _buildBuildingBlocks(),
                    SizedBox(
                        height: 32.v,
                        child: AnimatedSmoothIndicator(
                            activeIndex: 0,
                            count: 6,
                            effect: ScrollingDotsEffect(
                                spacing: 4,
                                activeDotColor: appTheme.blueGray700,
                                dotColor: appTheme.gray400,
                                dotHeight: 8.v,
                                dotWidth: 8.h))),
                    SizedBox(height: 18.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("msg_zari_pure_silk_paithani2".tr,
                                style: CustomTextStyles
                                    .titleMediumCabinBlack900))),
                    SizedBox(height: 4.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("msg_unused_6_month".tr,
                                style: CustomTextStyles.bodyMediumBlack900))),
                    SizedBox(height: 1.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("lbl_3_500".tr,
                                style: CustomTextStyles.titleSmallBlack900))),
                    SizedBox(height: 8.v),
                    _buildFrameFifteen(),
                    _buildFrameThirteen(),
                    _buildFrameThirteen1(),
                    _buildFrameTwentyOne()
                  ])))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBuildingBlocks() {
    return SizedBox(
        height: 427.v,
        width: 412.h,
        child: Stack(alignment: Alignment.center, children: [
          Obx(() => CarouselSlider.builder(
              options: CarouselOptions(
                  height: 427.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    controller.sliderIndex.value = index;
                  }),
              itemCount: controller
                  .oneproductModelObj.value.thumbnailItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                ThumbnailItemModel model = controller
                    .oneproductModelObj.value.thumbnailItemList.value[index];
                return ThumbnailItemWidget(model);
              })),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(left: 24.h, right: 12.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomAppBar(
                            height: 36.v,
                            leadingWidth: 48.h,
                            leading: AppbarLeadingImage(
                                imagePath: ImageConstant.imgArrowLeft,
                                margin: EdgeInsets.only(
                                    left: 24.h, top: 6.v, bottom: 6.v),
                                onTap: () {
                                  onTapArrowLeft();
                                }),
                            actions: [
                              AppbarTrailingIconbutton(
                                  imagePath: ImageConstant.imgWishlistPro,
                                  margin: EdgeInsets.only(left: 12.h)),
                              AppbarTrailingImage(
                                  imagePath: ImageConstant.imgSend,
                                  margin: EdgeInsets.only(
                                      left: 12.h, top: 6.v, bottom: 6.v)),
                              AppbarTrailingImage(
                                  imagePath: ImageConstant.imgIconBlack900,
                                  margin:
                                      EdgeInsets.fromLTRB(24.h, 6.v, 12.h, 6.v),
                                  onTap: () {
                                    onTapIcon();
                                  })
                            ]),
                        SizedBox(height: 324.v),
                        CustomElevatedButton(
                            height: 33.v,
                            width: 127.h,
                            text: "lbl_add_to_cart".tr,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumBluegray700,
                            alignment: Alignment.center)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildFrameFifteen() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        decoration: AppDecoration.fillGray50,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 129.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_type".tr,
                                      style: theme.textTheme.titleSmall),
                                  Text("lbl_bandhani".tr,
                                      style:
                                          CustomTextStyles.bodyMediumGray90003)
                                ])),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_fabric".tr,
                                  style: theme.textTheme.titleSmall),
                              SizedBox(height: 2.v),
                              Text("lbl_pure_silk".tr,
                                  style: CustomTextStyles.bodyMediumGray90003)
                            ])
                      ])),
              SizedBox(height: 17.v),
              Padding(
                  padding: EdgeInsets.only(right: 93.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("msg_print_or_pattern".tr,
                                  style: theme.textTheme.titleSmall),
                              Text("lbl_ethnic_motifs".tr,
                                  style: CustomTextStyles.bodyMediumGray90003)
                            ])),
                    Padding(
                        padding: EdgeInsets.only(left: 71.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_border".tr,
                                  style: theme.textTheme.titleSmall),
                              SizedBox(height: 4.v),
                              Text("lbl_woven_design".tr,
                                  style: CustomTextStyles.bodyMediumGray90003)
                            ]))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildFrameThirteen() {
    return Container(
        width: 412.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        decoration: AppDecoration.fillGray50,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lbl_size_fit".tr, style: theme.textTheme.titleSmall),
              SizedBox(height: 3.v),
              Text("msg_length_5_5m_width".tr,
                  style: CustomTextStyles.bodyMediumGray90003)
            ]));
  }

  /// Section Widget
  Widget _buildFrameThirteen1() {
    return Container(
        width: 412.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 6.v),
        decoration: AppDecoration.fillGray50,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Container(
                  width: 356.h,
                  margin: EdgeInsets.only(right: 23.h),
                  child: Text("msg_take_your_design".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumGray90003
                          .copyWith(height: 1.43)))
            ]));
  }

  /// Section Widget
  Widget _buildFrameTwentyOne() {
    return Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillGray50,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("msg_related_products".tr,
                  style: CustomTextStyles.bodyLargeBlack900),
              SizedBox(height: 9.v),
              SizedBox(
                  height: 258.v,
                  child: Obx(() => ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 8.h);
                      },
                      itemCount: controller.oneproductModelObj.value
                          .productcard1ItemList.value.length,
                      itemBuilder: (context, index) {
                        Productcard1ItemModel model = controller
                            .oneproductModelObj
                            .value
                            .productcard1ItemList
                            .value[index];
                        return Productcard1ItemWidget(model);
                      })))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.productscreenContainerPage;
      case BottomBarEnum.Quote:
        return "/";
      case BottomBarEnum.Orders:
        return "/";
      case BottomBarEnum.Replies:
        return "/";
      case BottomBarEnum.Cart:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.productscreenContainerPage:
        return ProductscreenContainerPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the reportScreen when the action is triggered.
  onTapIcon() {
    Get.toNamed(
      AppRoutes.reportScreen,
    );
  }
}
