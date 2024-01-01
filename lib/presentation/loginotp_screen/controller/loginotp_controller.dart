import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/loginotp_screen/models/loginotp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginotpScreen.
///
/// This class manages the state of the LoginotpScreen, including the
/// current loginotpModelObj
class LoginotpController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<LoginotpModel> loginotpModelObj = LoginotpModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
