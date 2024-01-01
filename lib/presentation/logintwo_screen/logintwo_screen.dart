import 'controller/logintwo_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/core/utils/validation_functions.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';
import 'package:mykanji/widgets/custom_outlined_button.dart';
import 'package:mykanji/widgets/custom_text_form_field.dart';
import 'package:mykanji/data/models/loginAuth/post_login_auth_req.dart';
import 'package:mykanji/data/models/loginAuth/post_login_auth_resp.dart';

// ignore_for_file: must_be_immutable
class LogintwoScreen extends GetWidget<LogintwoController> {
  LogintwoScreen({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.fromLTRB(20.h, 20.v, 20.h, 0.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: 80.adaptSize,
                          width: 80.adaptSize),
                      SizedBox(height: 42.v),
                      Text("lbl_log_in2".tr, style: theme.textTheme.titleLarge),
                      SizedBox(height: 39.v),
                      _buildInputWithLabel(),
                      SizedBox(height: 12.v),
                      _buildInputWithLabel1(),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtSignInWithOTP();
                              },
                              child: Text("msg_sign_in_with_otp".tr,
                                  style: CustomTextStyles
                                      .bodyMediumSFProBlue300))),
                      SizedBox(height: 39.v),
                      _buildSubmit(),
                      SizedBox(height: 41.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtForgotYourPassword();
                          },
                          child: Text("msg_forgot_your_password".tr,
                              style: CustomTextStyles.bodyLargeSFProBlack900)),
                      SizedBox(height: 41.v),
                      _buildFrame(),
                      SizedBox(height: 23.v),
                      _buildSocialButtons(),
                      SizedBox(height: 24.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 10.v),
                                child: Text("msg_don_t_have_an_account".tr,
                                    style: CustomTextStyles
                                        .bodyLargeSFProBlack900)),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtSignUp();
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Text("lbl_sign_up".tr,
                                        style: CustomTextStyles
                                            .titleMediumBlue300
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline))))
                          ]),
                      SizedBox(height: 9.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildInputWithLabelEmail() {
    return CustomTextFormField(
        controller: controller.inputWithLabelEmailController,
        hintText: "Enter Your Email",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMail,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 41.v),
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v));
  }

  /// Section Widget
  Widget _buildInputWithLabel() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_phone_number_e_mail".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 5.v),
      _buildInputWithLabelEmail()
    ]);
  }

  /// Section Widget
  Widget _buildInputWithLabelPassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.inputWithLabelPasswordController,
        hintText: "Enter Your Password",
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
        obscureText: controller.isShowPassword.value));
  }

  /// Section Widget
  Widget _buildInputWithLabel1() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      _buildInputWithLabelPassword()
    ]);
  }

  /// Section Widget
  Widget _buildSubmit() {
    return CustomElevatedButton(
        text: "lbl_submit".tr,
        buttonStyle: CustomButtonStyles.outlinePrimaryTL8,
        onPressed: () {
          login();
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
        height: 40.v,
        text: "msg_sign_in_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgSocialIconOnerrorcontainer,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL81);
  }

  /// Section Widget
  Widget _buildSignInWithApple() {
    return CustomElevatedButton(
        height: 40.v,
        text: "msg_sign_in_with_apple".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
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

  /// Navigates to the loginwithnumberScreen when the action is triggered.
  onTapTxtSignInWithOTP() {
    Get.toNamed(
      AppRoutes.loginwithnumberScreen,
    );
  }

  /// calls the [https://dull-jade-drill-tutu.cyclic.app/auth/login] API
  ///
  /// validates the form input fields and executes the API if all the fields are valid
  /// It has [PostLoginAuthReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onLoginSuccess()` function.
  /// If the call fails, the function calls the `_onLoginError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> login() async {
    if (_formKey.currentState!.validate()) {
      PostLoginAuthReq postLoginAuthReq = PostLoginAuthReq(
        userName: controller.inputWithLabelEmailController.text,
        password: controller.inputWithLabelPasswordController.text,
      );
      try {
        await controller.callLoginAuth(
          postLoginAuthReq.toJson(),
        );
        _onLoginSuccess();
      } on PostLoginAuthResp {
        _onLoginError();
      } on NoInternetException catch (e) {
        Get.rawSnackbar(message: e.toString());
      } catch (e) {
        //TODO: Handle generic errors
      }
    }
  }

  /// Navigates to the homeScreen when the action is triggered.
  void _onLoginSuccess() {
    Get.toNamed(
      AppRoutes.shopingcategoryTabContainerScreen,
    );
  }

  /// Displays an alert dialog when the action is triggered.
  /// The dialog box contains a title and a message with the `Retry`
  void _onLoginError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(), title: "Failed", middleText: "Retry");
  }

  /// Navigates to the forgotpasswordScreen when the action is triggered.
  onTapTxtForgotYourPassword() {
    Get.toNamed(
      AppRoutes.forgotpasswordScreen,
    );
  }

  /// Navigates to the signUpOneScreen when the action is triggered.
  onTapTxtSignUp() {
    Get.toNamed(
      AppRoutes.signUpOneScreen,
    );
  }
}
