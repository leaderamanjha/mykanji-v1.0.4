import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/productscreen_container_page/models/productscreen_container_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/data/models/getAuthProductsGetAll/get_get_auth_products_get_all_resp.dart';
import 'package:mykanji/data/apiClient/api_client.dart';
import '../models/productcard_item_model.dart';

/// A controller class for the ProductscreenContainerPage.
///
/// This class manages the state of the ProductscreenContainerPage, including the
/// current productscreenContainerModelObj
class ProductscreenContainerController extends GetxController {
  ProductscreenContainerController(this.productscreenContainerModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<ProductscreenContainerModel> productscreenContainerModelObj;

  GetGetAuthProductsGetAllResp getGetAuthProductsGetAllResp =
      GetGetAuthProductsGetAllResp();

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  /// Calls the https://dull-jade-drill-tutu.cyclic.app/auth/products-getall API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callGetAuthProductsGetAll() async {
    try {
      getGetAuthProductsGetAllResp =
          await Get.find<ApiClient>().getAuthProductsGetAll(headers: {
        'Content-type': 'application/json',
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyTmFtZSI6ImRlYnVAZ21haWwuY29tIiwicm9sZSI6InVzZXIiLCJpYXQiOjE3MDMwNTMwOTksImV4cCI6MTcwMzA1NjY5OX0.zsPgbSWK9CcZwnJQnvV3SeLviHYnS27_dDbikCT2xU0',
      });
      _handleGetAuthProductsGetAllSuccess();
    } on GetGetAuthProductsGetAllResp catch (e) {
      getGetAuthProductsGetAllResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleGetAuthProductsGetAllSuccess() {
    var productcardItemModelList = <ProductcardItemModel>[];
    for (var element in getGetAuthProductsGetAllResp.data ?? []) {
      var productcardItemModel = ProductcardItemModel();
      productcardItemModel.productPrice?.value = element.productPrice ?? 0;
      productcardItemModel.productTitle?.value = element.productsName ?? '';
      productcardItemModel.productImage?.value = element.productImage ?? '';
      productcardItemModelList.add(productcardItemModel);
    }
    productscreenContainerModelObj.value.productcardItemList.value =
        productcardItemModelList;
  }

  /// calls the [https://dull-jade-drill-tutu.cyclic.app/auth/products-getall] API
  ///
  /// It has [GetGetAuthProductsGetAllReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onGetAuthProductsGetAllSuccess()` function.
  /// If the call fails, the function calls the `_onGetAuthProductsGetAllError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  @override
  Future<void> onReady() async {
    try {
      await callGetAuthProductsGetAll();
      _onGetAuthProductsGetAllSuccess();
    } on GetGetAuthProductsGetAllResp {
      _onGetAuthProductsGetAllError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onGetAuthProductsGetAllSuccess() {}

  /// Displays an alert dialog when the action is triggered.
  /// The dialog box contains a title and a message with the `Product not Fetch`
  void _onGetAuthProductsGetAllError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Failed",
        middleText: "Product not Fetch");
  }
}
