import '../controller/productscreen_container1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductscreenContainer1Screen.
///
/// This class ensures that the ProductscreenContainer1Controller is created when the
/// ProductscreenContainer1Screen is first loaded.
class ProductscreenContainer1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductscreenContainer1Controller());
  }
}
