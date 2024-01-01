import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/forgotpassword_screen/models/forgotpassword_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/data/models/forgotPassword/post_forgot_password_resp.dart';
import 'package:mykanji/data/apiClient/api_client.dart';

/// A controller class for the ForgotpasswordScreen.
///
/// This class manages the state of the ForgotpasswordScreen, including the
/// current forgotpasswordModelObj
class ForgotpasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<ForgotpasswordModel> forgotpasswordModelObj = ForgotpasswordModel().obs;

  PostForgotPasswordResp postForgotPasswordResp = PostForgotPasswordResp();

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }

  /// Calls the https://dull-jade-drill-tutu.cyclic.app/auth/forgot-password API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callForgotPassword(Map req) async {
    try {
      postForgotPasswordResp = await Get.find<ApiClient>().forgotPassword(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      _handleForgotPasswordSuccess();
    } on PostForgotPasswordResp catch (e) {
      postForgotPasswordResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleForgotPasswordSuccess() {
    Get.find<PrefUtils>().setEmailsucess(postForgotPasswordResp.message ?? '');
  }
}
