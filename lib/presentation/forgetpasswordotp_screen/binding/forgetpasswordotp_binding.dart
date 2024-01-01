import '../controller/forgetpasswordotp_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ForgetpasswordotpScreen.
///
/// This class ensures that the ForgetpasswordotpController is created when the
/// ForgetpasswordotpScreen is first loaded.
class ForgetpasswordotpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetpasswordotpController());
  }
}
