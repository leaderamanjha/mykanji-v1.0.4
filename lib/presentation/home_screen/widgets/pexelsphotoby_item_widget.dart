import '../controller/home_controller.dart';
import '../models/pexelsphotoby_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class PexelsphotobyItemWidget extends StatelessWidget {
  PexelsphotobyItemWidget(
    this.pexelsphotobyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PexelsphotobyItemModel pexelsphotobyItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.fillRed,
        child: CustomImageView(
          imagePath: ImageConstant.imgPexelsPhotoBy,
          height: 232.v,
          width: 412.h,
        ),
      ),
    );
  }
}
