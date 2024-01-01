import '../controller/loginotp_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginotpScreen.
///
/// This class ensures that the LoginotpController is created when the
/// LoginotpScreen is first loaded.
class LoginotpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginotpController());
  }
}
