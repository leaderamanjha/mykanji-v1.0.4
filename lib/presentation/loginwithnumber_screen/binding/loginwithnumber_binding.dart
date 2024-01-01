import '../controller/loginwithnumber_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginwithnumberScreen.
///
/// This class ensures that the LoginwithnumberController is created when the
/// LoginwithnumberScreen is first loaded.
class LoginwithnumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginwithnumberController());
  }
}
