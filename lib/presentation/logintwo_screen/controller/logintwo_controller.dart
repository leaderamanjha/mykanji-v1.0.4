import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/logintwo_screen/models/logintwo_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/data/models/loginAuth/post_login_auth_resp.dart';
import 'package:mykanji/data/apiClient/api_client.dart';

/// A controller class for the LogintwoScreen.
///
/// This class manages the state of the LogintwoScreen, including the
/// current logintwoModelObj
class LogintwoController extends GetxController {
  TextEditingController inputWithLabelEmailController = TextEditingController();

  TextEditingController inputWithLabelPasswordController =
      TextEditingController();

  Rx<LogintwoModel> logintwoModelObj = LogintwoModel().obs;

  Rx<bool> isShowPassword = true.obs;

  PostLoginAuthResp postLoginAuthResp = PostLoginAuthResp();

  @override
  void onClose() {
    super.onClose();
    inputWithLabelEmailController.dispose();
    inputWithLabelPasswordController.dispose();
  }

  /// Calls the https://dull-jade-drill-tutu.cyclic.app/auth/login API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callLoginAuth(Map req) async {
    try {
      postLoginAuthResp = await Get.find<ApiClient>().loginAuth(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      _handleLoginAuthSuccess();
    } on PostLoginAuthResp catch (e) {
      postLoginAuthResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleLoginAuthSuccess() {
    Get.find<PrefUtils>().setToken(postLoginAuthResp.token ?? '');
  }
}
