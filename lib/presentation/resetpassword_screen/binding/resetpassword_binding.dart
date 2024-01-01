import '../controller/resetpassword_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ResetpasswordScreen.
///
/// This class ensures that the ResetpasswordController is created when the
/// ResetpasswordScreen is first loaded.
class ResetpasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetpasswordController());
  }
}
