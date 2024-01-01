import '../controller/signupotp_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignupotpScreen.
///
/// This class ensures that the SignupotpController is created when the
/// SignupotpScreen is first loaded.
class SignupotpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupotpController());
  }
}
