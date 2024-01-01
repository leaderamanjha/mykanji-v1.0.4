import 'controller/loginotp_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';
import 'package:mykanji/widgets/custom_pin_code_text_field.dart';

class LoginotpScreen extends GetWidget<LoginotpController> {
  const LoginotpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 40.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgLogo,
                      height: 80.adaptSize,
                      width: 80.adaptSize),
                  SizedBox(height: 42.v),
                  Text("lbl_log_in2".tr, style: theme.textTheme.titleLarge),
                  SizedBox(height: 38.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("msg_verification_code".tr,
                          style:
                              CustomTextStyles.bodyMediumSFProBluegray80001)),
                  SizedBox(height: 7.v),
                  Obx(() => CustomPinCodeTextField(
                      context: Get.context!,
                      controller: controller.otpController.value,
                      onChanged: (value) {})),
                  SizedBox(height: 42.v),
                  Text("msg_didn_t_receive".tr,
                      style: CustomTextStyles.bodyMediumSFProBlue300),
                  SizedBox(height: 39.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgEnterOtpCuateErrorcontainer,
                      height: 240.v,
                      width: 226.h),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildSubmitButton()));
  }

  /// Section Widget
  Widget _buildSubmitButton() {
    return CustomElevatedButton(
        text: "lbl_submit".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 74.v),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL8,
        onPressed: () {
          onTapSubmitButton();
        });
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapSubmitButton() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
