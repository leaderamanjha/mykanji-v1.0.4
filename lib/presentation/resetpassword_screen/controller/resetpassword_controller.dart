import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/resetpassword_screen/models/resetpassword_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ResetpasswordScreen.
///
/// This class manages the state of the ResetpasswordScreen, including the
/// current resetpasswordModelObj
class ResetpasswordController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<ResetpasswordModel> resetpasswordModelObj = ResetpasswordModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
}
