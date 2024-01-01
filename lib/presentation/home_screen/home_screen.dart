import '../home_screen/widgets/pexelsphotoby_item_widget.dart';
import '../home_screen/widgets/productlistinglist_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/pexelsphotoby_item_model.dart';
import 'models/productlistinglist_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/app_bar/appbar_title.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 412.h,
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.v),
                    decoration: AppDecoration.fillOnErrorContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder18),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      _buildPexelsPhotoByStack(),
                      SizedBox(height: 51.v),
                      Text("msg_what_are_you_looking".tr,
                          style: theme.textTheme.headlineSmall),
                      onTapProductListing(),
                      SizedBox(height: 30.v),
                      _buildProductListingList(),
                      Spacer(),
                      SizedBox(
                          width: 108.h,
                          child: Divider(color: appTheme.gray90002))
                    ])))));
  }

  /// Section Widget
  Widget _buildPexelsPhotoByStack() {
    return SizedBox(
        height: 232.v,
        width: 412.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 232.v,
                  width: 412.h,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Obx(() => CarouselSlider.builder(
                        options: CarouselOptions(
                            height: 232.v,
                            initialPage: 0,
                            autoPlay: true,
                            viewportFraction: 1.0,
                            enableInfiniteScroll: false,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              controller.sliderIndex.value = index;
                            }),
                        itemCount: controller.homeModelObj.value
                            .pexelsphotobyItemList.value.length,
                        itemBuilder: (context, index, realIndex) {
                          PexelsphotobyItemModel model = controller.homeModelObj
                              .value.pexelsphotobyItemList.value[index];
                          return PexelsphotobyItemWidget(model);
                        })),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Obx(() => Container(
                            height: 5.v,
                            margin: EdgeInsets.only(bottom: 16.v),
                            child: AnimatedSmoothIndicator(
                                activeIndex: controller.sliderIndex.value,
                                count: controller.homeModelObj.value
                                    .pexelsphotobyItemList.value.length,
                                axisDirection: Axis.horizontal,
                                effect: ScrollingDotsEffect(
                                    spacing: 6,
                                    activeDotColor: theme.colorScheme.onPrimary,
                                    dotColor: theme.colorScheme.onPrimary,
                                    dotHeight: 5.v,
                                    dotWidth: 5.h)))))
                  ]))),
          CustomAppBar(
              height: 68.v,
              centerTitle: true,
              title: AppbarTitle(text: "lbl_get_50_off".tr))
        ]));
  }

  /// Section Widget
  Widget _buildProductListingList() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 32.v);
            },
            itemCount: controller
                .homeModelObj.value.productlistinglistItemList.value.length,
            itemBuilder: (context, index) {
              ProductlistinglistItemModel model = controller
                  .homeModelObj.value.productlistinglistItemList.value[index];
              return ProductlistinglistItemWidget(model,
                  onTapProductListing: () {
                onTapProductListing();
              }, shop: () {
                shop();
              }, shoping: () {
                shoping();
              });
            })));
  }

  /// Navigates to the shopingcategoryTabContainerScreen when the action is triggered.
  onTapProductListing() {
    Get.toNamed(
      AppRoutes.shopingcategoryPage,
    );
  }

  /// Navigates to the shopingcategoryTabContainerScreen when the action is triggered.
  shop() {
    Get.toNamed(
      AppRoutes.shopingcategoryTabContainerScreen,
    );
  }

  /// Navigates to the shopingcategoryTabContainerScreen when the action is triggered.
  shoping() {
    Get.toNamed(
      AppRoutes.shopingcategoryTabContainerScreen,
    );
  }
}
