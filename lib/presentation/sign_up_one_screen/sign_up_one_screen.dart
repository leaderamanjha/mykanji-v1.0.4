import 'controller/sign_up_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/core/utils/validation_functions.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';
import 'package:mykanji/widgets/custom_outlined_button.dart';
import 'package:mykanji/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpOneScreen extends GetWidget<SignUpOneController> {
  SignUpOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: 80.adaptSize,
                          width: 80.adaptSize),
                      SizedBox(height: 29.v),
                      Text("lbl_sign_up".tr, style: theme.textTheme.titleLarge),
                      SizedBox(height: 25.v),
                      _buildInputWithLabelName(),
                      SizedBox(height: 13.v),
                      _buildInputWithLabelEmail(),
                      SizedBox(height: 6.v),
                      _buildInputWithLabelPassword(),
                      SizedBox(height: 12.v),
                      _buildInputWithLabelConfirmPassword(),
                      SizedBox(height: 27.v),
                      _buildContinueButton(),
                      SizedBox(height: 28.v),
                      _buildFrameRow(),
                      SizedBox(height: 26.v),
                      _buildSocialButtons(),
                      SizedBox(height: 28.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("msg_already_have_an".tr,
                                style: CustomTextStyles.bodyLargeSFProBlack900),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtLogIn();
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Text("lbl_login".tr,
                                        style: CustomTextStyles
                                            .titleMediumBlue300
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline))))
                          ]),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildInputWithLabelName() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_name".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      CustomTextFormField(
          controller: controller.nameController,
          hintText: "lbl_siddartha".tr,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgMail,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 41.v),
          contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL12)
    ]);
  }

  /// Section Widget
  Widget _buildInputWithLabelEmail() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_phone_number_e_mail".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 5.v),
      CustomTextFormField(
          controller: controller.emailController,
          hintText: "lbl_91_98945_65589".tr,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgMail,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 41.v),
          contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL12)
    ]);
  }

  /// Section Widget
  Widget _buildInputWithLabelPassword() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      Obx(() => CustomTextFormField(
          controller: controller.passwordController,
          hintText: "lbl_opksdgb245w".tr,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgPassword,
                  height: 20.adaptSize,
                  width: 20.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 41.v),
          suffix: InkWell(
              onTap: () {
                controller.isShowPassword.value =
                    !controller.isShowPassword.value;
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEyeOpen,
                      height: 16.adaptSize,
                      width: 16.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 41.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: controller.isShowPassword.value))
    ]);
  }

  /// Section Widget
  Widget _buildConfirmpassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.confirmpasswordController,
        hintText: "lbl_opksdgb245w".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgPassword,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 41.v),
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword1.value =
                  !controller.isShowPassword1.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEyeOpen,
                    height: 16.adaptSize,
                    width: 16.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 41.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword1.value));
  }

  /// Section Widget
  Widget _buildInputWithLabelConfirmPassword() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_confirm_password".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      _buildConfirmpassword()
    ]);
  }

  /// Section Widget
  Widget _buildContinueButton() {
    return CustomElevatedButton(
        text: "lbl_continue".tr,
        buttonStyle: CustomButtonStyles.outlinePrimary,
        onPressed: () {
          onTapContinueButton();
        });
  }

  /// Section Widget
  Widget _buildFrameRow() {
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
  Widget _buildSocialButtonSignUpWithGoogle() {
    return CustomOutlinedButton(
        text: "msg_sign_up_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSocialIcon,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlueGrayTL12);
  }

  /// Section Widget
  Widget _buildSocialButtonSignUpWithFacebook() {
    return CustomElevatedButton(
        height: 44.v,
        text: "msg_sign_up_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSocialIconOnerrorcontainer,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL12);
  }

  /// Section Widget
  Widget _buildSocialButtonSignUpWithApple() {
    return CustomElevatedButton(
        height: 44.v,
        text: "msg_sign_up_with_apple".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgAppleSocialIcon,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL121);
  }

  /// Section Widget
  Widget _buildSocialButtons() {
    return Column(children: [
      _buildSocialButtonSignUpWithGoogle(),
      SizedBox(height: 12.v),
      _buildSocialButtonSignUpWithFacebook(),
      SizedBox(height: 12.v),
      _buildSocialButtonSignUpWithApple()
    ]);
  }

  /// Navigates to the signupotpScreen when the action is triggered.
  onTapContinueButton() {
    Get.toNamed(
      AppRoutes.signupotpScreen,
    );
  }

  /// Navigates to the logintwoScreen when the action is triggered.
  onTapTxtLogIn() {
    Get.toNamed(
      AppRoutes.logintwoScreen,
    );
  }
}
