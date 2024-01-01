import '../controller/home_controller.dart';
import '../models/productlistinglist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class ProductlistinglistItemWidget extends StatelessWidget {
  ProductlistinglistItemWidget(
    this.productlistinglistItemModelObj, {
    Key? key,
    this.onTapProductListing,
    this.shop,
    this.shoping,
  }) : super(
          key: key,
        );

  ProductlistinglistItemModel productlistinglistItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapProductListing;

  VoidCallback? shop;

  VoidCallback? shoping;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProductListing!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.v),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4.v),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      shop!.call();
                    },
                    child: Obx(
                      () => Text(
                        productlistinglistItemModelObj.title!.value,
                        style:
                            CustomTextStyles.titleMediumCenturyGothicBlack900,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  SizedBox(
                    width: 154.h,
                    child: Obx(
                      () => Text(
                        productlistinglistItemModelObj.description!.value,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumCenturyGothicBlack900
                            .copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Obx(
              () => CustomImageView(
                imagePath: productlistinglistItemModelObj.image!.value,
                height: 54.adaptSize,
                width: 54.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 8.v),
                onTap: () {
                  shoping!.call();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
