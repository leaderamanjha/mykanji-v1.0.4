import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 412.h,
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 54.h, vertical: 246.v),
                    decoration: AppDecoration.gradientOnPrimaryToGray,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLogo,
                              height: 80.adaptSize,
                              width: 80.adaptSize),
                          SizedBox(height: 67.v),
                          Text("msg_welcome_to_mykanjee".tr,
                              style: theme.textTheme.headlineLarge),
                          SizedBox(height: 25.v),
                          Text("msg_join_our_sustainable".tr,
                              style: CustomTextStyles.bodyLargeBlack900),
                          SizedBox(height: 12.v),
                          Container(
                              width: 270.h,
                              margin: EdgeInsets.only(left: 16.h, right: 17.h),
                              child: Text("msg_join_our_thriving".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyMediumBlack900
                                      .copyWith(height: 1.43))),
                          SizedBox(height: 72.v)
                        ])))));
  }
}
