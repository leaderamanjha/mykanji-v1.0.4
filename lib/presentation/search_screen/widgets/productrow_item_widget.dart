import '../controller/search_controller.dart';
import '../models/productrow_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class ProductrowItemWidget extends StatelessWidget {
  ProductrowItemWidget(
    this.productrowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductrowItemModel productrowItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Obx(
            () => Text(
              productrowItemModelObj.productName!.value,
              style: CustomTextStyles.bodyLargeSFProGray80002,
            ),
          ),
        ),
        Obx(
          () => Text(
            productrowItemModelObj.todayDate!.value,
            style: CustomTextStyles.bodyLargeSFProGray80002,
          ),
        ),
      ],
    );
  }
}
