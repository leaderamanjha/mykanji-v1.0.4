import '../controller/forgotpassword_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ForgotpasswordScreen.
///
/// This class ensures that the ForgotpasswordController is created when the
/// ForgotpasswordScreen is first loaded.
class ForgotpasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotpasswordController());
  }
}
