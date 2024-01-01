import '../controller/oneproduct_controller.dart';
import '../models/productcard1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Productcard1ItemWidget extends StatelessWidget {
  Productcard1ItemWidget(
    this.productcard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard1ItemModel productcard1ItemModelObj;

  var controller = Get.find<OneproductController>();

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
              Obx(
                () => CustomImageView(
                  imagePath: productcard1ItemModelObj.image?.value,
                  height: 182.v,
                  width: 186.h,
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
                          productcard1ItemModelObj.title!.value,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Obx(
                        () => Text(
                          productcard1ItemModelObj.price!.value,
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
