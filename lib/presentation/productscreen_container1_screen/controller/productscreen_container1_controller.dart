import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/productscreen_container1_screen/models/productscreen_container1_model.dart';

/// A controller class for the ProductscreenContainer1Screen.
///
/// This class manages the state of the ProductscreenContainer1Screen, including the
/// current productscreenContainer1ModelObj
class ProductscreenContainer1Controller extends GetxController {
  Rx<ProductscreenContainer1Model> productscreenContainer1ModelObj =
      ProductscreenContainer1Model().obs;
}
