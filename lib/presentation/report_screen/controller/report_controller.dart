import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/report_screen/models/report_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ReportScreen.
///
/// This class manages the state of the ReportScreen, including the
/// current reportModelObj
class ReportController extends GetxController {
  TextEditingController editTextController = TextEditingController();

  Rx<ReportModel> reportModelObj = ReportModel().obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
  }
}
