import 'controller/forgotpassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/core/utils/validation_functions.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';
import 'package:mykanji/widgets/custom_text_form_field.dart';
import 'package:mykanji/data/models/forgotPassword/post_forgot_password_req.dart';
import 'package:mykanji/data/models/forgotPassword/post_forgot_password_resp.dart';

// ignore_for_file: must_be_immutable
class ForgotpasswordScreen extends GetWidget<ForgotpasswordController> {
  ForgotpasswordScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 40.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: 80.adaptSize,
                          width: 80.adaptSize),
                      SizedBox(height: 42.v),
                      Text("msg_forget_your_password".tr,
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 39.v),
                      Text("msg_enter_your_registered".tr,
                          style: CustomTextStyles.bodyLargeSFProBlack900),
                      SizedBox(height: 39.v),
                      _buildInputWithLabel(),
                      SizedBox(height: 24.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
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
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildResetPassword()));
  }

  /// Section Widget
  Widget _buildInputWithLabel() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 6.v),
      CustomTextFormField(
          controller: controller.emailController,
          hintText: "msg_siddarthaj23_gmail_com".tr,
          hintStyle: CustomTextStyles.bodyLargeSFProPrimaryContainer,
          textInputAction: TextInputAction.done,
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
          contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v))
    ]);
  }

  /// Section Widget
  Widget _buildResetPassword() {
    return CustomElevatedButton(
        text: "lbl_reset_password".tr,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 74.v),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL8,
        onPressed: () {
          onTapResetPassword();
        });
  }

  /// Navigates to the signUpOneScreen when the action is triggered.
  onTapTxtSignUp() {
    Get.toNamed(
      AppRoutes.signUpOneScreen,
    );
  }

  /// calls the [https://dull-jade-drill-tutu.cyclic.app/auth/forgot-password] API
  ///
  /// validates the form input fields and executes the API if all the fields are valid
  /// It has [PostForgotPasswordReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onForgotSuccess()` function.
  /// If the call fails, the function calls the `_onForgotError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> onTapResetPassword() async {
    if (_formKey.currentState!.validate()) {
      PostForgotPasswordReq postForgotPasswordReq = PostForgotPasswordReq(
        userName: controller.emailController.text,
      );
      try {
        await controller.callForgotPassword(
          postForgotPasswordReq.toJson(),
        );
        _onForgotSuccess();
      } on PostForgotPasswordResp {
        _onForgotError();
      } on NoInternetException catch (e) {
        Get.rawSnackbar(message: e.toString());
      } catch (e) {
        //TODO: Handle generic errors
      }
    }
  }

  /// Navigates to the forgetpasswordotpScreen when the action is triggered.
  void _onForgotSuccess() {
    Get.toNamed(
      AppRoutes.forgetpasswordotpScreen,
    );
  }

  /// Displays an alert dialog when the action is triggered.
  /// The dialog box contains a title and a message with the `Retry`
  void _onForgotError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(), title: "Failed", middleText: "Retry");
  }
}
