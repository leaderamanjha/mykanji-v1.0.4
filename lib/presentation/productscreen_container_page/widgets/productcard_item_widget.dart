import '../controller/productscreen_container_controller.dart';
import '../models/productcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';
import 'package:mykanji/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  var controller = Get.find<ProductscreenContainerController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 186.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.gray300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Container(
          height: 258.v,
          width: 186.h,
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 182.v,
                  width: 186.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath:
                              productcardItemModelObj.productImage?.value,
                          height: 182.v,
                          width: 186.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 16.v,
                          right: 16.h,
                        ),
                        child: CustomIconButton(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          alignment: Alignment.topRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgWishlistPro,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    bottom: 16.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomElevatedButton(
                        height: 33.v,
                        width: 127.h,
                        text: "lbl_add_to_cart".tr,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumBluegray700,
                        alignment: Alignment.center,
                      ),
                      SizedBox(height: 2.v),
                      Obx(
                        () => Text(
                          productcardItemModelObj.productTitle!.value,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Obx(
                        () => Text(
                          productcardItemModelObj.productPrice!.value,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
