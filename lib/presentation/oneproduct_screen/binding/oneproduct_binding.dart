import '../controller/oneproduct_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OneproductScreen.
///
/// This class ensures that the OneproductController is created when the
/// OneproductScreen is first loaded.
class OneproductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OneproductController());
  }
}
