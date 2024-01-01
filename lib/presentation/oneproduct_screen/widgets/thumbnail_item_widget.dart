import '../controller/oneproduct_controller.dart';
import '../models/thumbnail_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class ThumbnailItemWidget extends StatelessWidget {
  ThumbnailItemWidget(
    this.thumbnailItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThumbnailItemModel thumbnailItemModelObj;

  var controller = Get.find<OneproductController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgThumbnail,
        height: 427.v,
        width: 412.h,
      ),
    );
  }
}
