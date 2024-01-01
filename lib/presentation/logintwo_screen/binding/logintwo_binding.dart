import '../controller/logintwo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LogintwoScreen.
///
/// This class ensures that the LogintwoController is created when the
/// LogintwoScreen is first loaded.
class LogintwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogintwoController());
  }
}
