import 'controller/loginwithnumber_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';
import 'package:mykanji/widgets/custom_outlined_button.dart';
import 'package:mykanji/widgets/custom_text_form_field.dart';
import 'package:mykanji/data/models/loginWithUserName/post_login_with_user_name_req.dart';
import 'package:mykanji/data/models/loginWithUserName/post_login_with_user_name_resp.dart';

class LoginwithnumberScreen extends GetWidget<LoginwithnumberController> {
  const LoginwithnumberScreen({Key? key}) : super(key: key);

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
                  SizedBox(height: 39.v),
                  _buildInputWithLabel(),
                  SizedBox(height: 13.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                          onTap: () {
                            onTapTxtEdit();
                          },
                          child: Text("lbl_edit".tr,
                              style: CustomTextStyles.bodyMediumSFProBlue300))),
                  SizedBox(height: 40.v),
                  _buildSendOTP(),
                  SizedBox(height: 41.v),
                  _buildFrame(),
                  SizedBox(height: 39.v),
                  _buildSocialButtons(),
                  SizedBox(height: 40.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text("msg_don_t_have_an_account".tr,
                            style: CustomTextStyles.bodyLargeSFProBlack900)),
                    GestureDetector(
                        onTap: () {
                          onTapTxtSignUp();
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("lbl_sign_up".tr,
                                style: CustomTextStyles.titleMediumBlue300
                                    .copyWith(
                                        decoration: TextDecoration.underline))))
                  ]),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildInputWithLabel() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_phone_number_e_mail".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 5.v),
      CustomTextFormField(
          controller: controller.emailController,
          hintText: "lbl_91_98986_98645".tr,
          textInputAction: TextInputAction.done,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgPassword,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 41.v),
          suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgEyeOpen,
                  height: 16.adaptSize,
                  width: 16.adaptSize)),
          suffixConstraints: BoxConstraints(maxHeight: 41.v))
    ]);
  }

  /// Section Widget
  Widget _buildSendOTP() {
    return CustomElevatedButton(
        text: "lbl_send_otp".tr,
        buttonStyle: CustomButtonStyles.outlinePrimaryTL8,
        onPressed: () {
          onTapSendOTP();
        });
  }

  /// Section Widget
  Widget _buildFrame() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 10.v),
              child: SizedBox(width: 174.h, child: Divider())),
          Text("lbl_or".tr, style: CustomTextStyles.bodyLargeSFProGray800),
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 10.v),
              child: SizedBox(width: 174.h, child: Divider()))
        ]);
  }

  /// Section Widget
  Widget _buildSignInWithGoogle() {
    return CustomOutlinedButton(
        text: "msg_sign_in_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSocialIcon,
                height: 24.adaptSize,
                width: 24.adaptSize)));
  }

  /// Section Widget
  Widget _buildSignInWithFacebook() {
    return CustomElevatedButton(
        height: 44.v,
        text: "msg_sign_in_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSocialIconOnerrorcontainer,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL81);
  }

  /// Section Widget
  Widget _buildSignInWithApple() {
    return CustomElevatedButton(
        height: 44.v,
        text: "msg_sign_in_with_apple".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgAppleSocialIcon,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL82);
  }

  /// Section Widget
  Widget _buildSocialButtons() {
    return Column(children: [
      _buildSignInWithGoogle(),
      SizedBox(height: 12.v),
      _buildSignInWithFacebook(),
      SizedBox(height: 12.v),
      _buildSignInWithApple()
    ]);
  }

  /// Navigates to the logintwoScreen when the action is triggered.
  onTapTxtEdit() {
    Get.toNamed(
      AppRoutes.logintwoScreen,
    );
  }

  /// calls the [https://dull-jade-drill-tutu.cyclic.app/auth/loginWithUserName] API
  ///
  /// It has [PostLoginWithUserNameReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onLoginotpaSuccess()` function.
  /// If the call fails, the function calls the `_onLoginotpaError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> onTapSendOTP() async {
    PostLoginWithUserNameReq postLoginWithUserNameReq =
        PostLoginWithUserNameReq(
      userName: controller.emailController.text,
    );
    try {
      await controller.callLoginWithUserName(
        postLoginWithUserNameReq.toJson(),
      );
      _onLoginotpaSuccess();
    } on PostLoginWithUserNameResp {
      _onLoginotpaError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  /// Navigates to the loginotpScreen when the action is triggered.
  void _onLoginotpaSuccess() {
    Get.toNamed(
      AppRoutes.loginotpScreen,
    );
  }

  /// Displays an alert dialog when the action is triggered.
  /// The dialog box contains a title and a message with the `Retry`
  void _onLoginotpaError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(), title: "Failed", middleText: "Retry");
  }

  /// Navigates to the signUpOneScreen when the action is triggered.
  onTapTxtSignUp() {
    Get.toNamed(
      AppRoutes.signUpOneScreen,
    );
  }
}
