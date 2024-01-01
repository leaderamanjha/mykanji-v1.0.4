import '../controller/shopingcategory_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShopingcategoryTabContainerScreen.
///
/// This class ensures that the ShopingcategoryTabContainerController is created when the
/// ShopingcategoryTabContainerScreen is first loaded.
class ShopingcategoryTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShopingcategoryTabContainerController());
  }
}
