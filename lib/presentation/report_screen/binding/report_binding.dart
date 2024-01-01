import '../controller/report_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReportScreen.
///
/// This class ensures that the ReportController is created when the
/// ReportScreen is first loaded.
class ReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportController());
  }
}
