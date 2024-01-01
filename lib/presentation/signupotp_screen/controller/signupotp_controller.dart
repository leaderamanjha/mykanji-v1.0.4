import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/signupotp_screen/models/signupotp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupotpScreen.
///
/// This class manages the state of the SignupotpScreen, including the
/// current signupotpModelObj
class SignupotpController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<SignupotpModel> signupotpModelObj = SignupotpModel().obs;

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
