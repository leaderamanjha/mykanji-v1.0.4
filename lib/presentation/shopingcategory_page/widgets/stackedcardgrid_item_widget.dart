import '../controller/shopingcategory_controller.dart';
import '../models/stackedcardgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class StackedcardgridItemWidget extends StatelessWidget {
  StackedcardgridItemWidget(
    this.stackedcardgridItemModelObj, {
    Key? key,
    this.onTapStackedCard,
  }) : super(
          key: key,
        );

  StackedcardgridItemModel stackedcardgridItemModelObj;

  var controller = Get.find<ShopingcategoryController>();

  VoidCallback? onTapStackedCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapStackedCard!.call();
      },
      child: Container(
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: stackedcardgridItemModelObj.sareesImage?.value,
                height: 182.adaptSize,
                width: 182.adaptSize,
              ),
            ),
            SizedBox(height: 18.v),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Obx(
                () => Text(
                  stackedcardgridItemModelObj.titleText!.value,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
            SizedBox(height: 2.v),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Obx(
                () => Text(
                  stackedcardgridItemModelObj.subheadText!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ),
            SizedBox(height: 17.v),
          ],
        ),
      ),
    );
  }
}
