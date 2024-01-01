import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/forgetpasswordotp_screen/models/forgetpasswordotp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/data/models/registerOtpPost/post_register_otp_post_resp.dart';
import 'package:mykanji/data/apiClient/api_client.dart';

/// A controller class for the ForgetpasswordotpScreen.
///
/// This class manages the state of the ForgetpasswordotpScreen, including the
/// current forgetpasswordotpModelObj
class ForgetpasswordotpController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<ForgetpasswordotpModel> forgetpasswordotpModelObj =
      ForgetpasswordotpModel().obs;

  PostRegisterOtpPostResp postRegisterOtpPostResp = PostRegisterOtpPostResp();

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  /// Calls the https://dull-jade-drill-tutu.cyclic.app/auth/register/otp API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callRegisterOtpPost(Map req) async {
    try {
      postRegisterOtpPostResp = await Get.find<ApiClient>().registerOtpPost(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      _handleRegisterOtpPostSuccess();
    } on PostRegisterOtpPostResp catch (e) {
      postRegisterOtpPostResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleRegisterOtpPostSuccess() {
    Get.find<PrefUtils>().setOtpSucess(postRegisterOtpPostResp.message ?? '');
  }
}
