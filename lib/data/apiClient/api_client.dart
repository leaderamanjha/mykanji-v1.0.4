import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/core/utils/progress_dialog_utils.dart';
import 'package:mykanji/data/models/authCategoryGetAll/get_auth_category_get_all_resp.dart';
import 'package:mykanji/data/models/forgotPassword/post_forgot_password_resp.dart';
import 'package:mykanji/data/models/getAuthProductsGetAll/get_get_auth_products_get_all_resp.dart';
import 'package:mykanji/data/models/loginAuth/post_login_auth_resp.dart';
import 'package:mykanji/data/models/loginWithUserName/post_login_with_user_name_resp.dart';
import 'package:mykanji/data/models/registerOtpPost/post_register_otp_post_resp.dart';
import 'package:mykanji/data/models/registerUser/post_register_user_resp.dart';
import 'package:mykanji/data/models/resetPasswordApi/post_reset_password_api_resp.dart';

class ApiClient extends GetConnect {
  var url = "https://dull-jade-drill-tutu.cyclic.app";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = const Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  /// Performs API call for https://dull-jade-drill-tutu.cyclic.app/auth/login
  ///
  /// Sends a POST request to the server's 'https://dull-jade-drill-tutu.cyclic.app/auth/login' endpoint
  /// with the provided headers and request data
  /// Returns a [PostLoginAuthResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostLoginAuthResp> loginAuth({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/login',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostLoginAuthResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostLoginAuthResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://dull-jade-drill-tutu.cyclic.app/auth/products-getall
  ///
  /// Sends a GET request to the server's 'https://dull-jade-drill-tutu.cyclic.app/auth/products-getall' endpoint
  /// with the provided headers and request data
  /// Returns a [GetGetAuthProductsGetAllResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<GetGetAuthProductsGetAllResp> getAuthProductsGetAll(
      {Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
        '$url/auth/products-getall',
        headers: headers,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return GetGetAuthProductsGetAllResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? GetGetAuthProductsGetAllResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://dull-jade-drill-tutu.cyclic.app/auth/category-getall
  ///
  /// Sends a GET request to the server's 'https://dull-jade-drill-tutu.cyclic.app/auth/category-getall' endpoint
  /// with the provided headers and request data
  /// Returns a [GetAuthCategoryGetAllResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<GetAuthCategoryGetAllResp> authCategoryGetAll(
      {Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
        '$url/auth/category-getall',
        headers: headers,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return GetAuthCategoryGetAllResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? GetAuthCategoryGetAllResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://dull-jade-drill-tutu.cyclic.app/auth/resetPassword
  ///
  /// Sends a POST request to the server's 'https://dull-jade-drill-tutu.cyclic.app/auth/resetPassword' endpoint
  /// with the provided headers and request data
  /// Returns a [PostResetPasswordApiResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostResetPasswordApiResp> resetPasswordApi({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/resetPassword',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostResetPasswordApiResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostResetPasswordApiResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://dull-jade-drill-tutu.cyclic.app/auth/forgot-password
  ///
  /// Sends a POST request to the server's 'https://dull-jade-drill-tutu.cyclic.app/auth/forgot-password' endpoint
  /// with the provided headers and request data
  /// Returns a [PostForgotPasswordResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostForgotPasswordResp> forgotPassword({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/forgot-password',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostForgotPasswordResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostForgotPasswordResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://dull-jade-drill-tutu.cyclic.app/auth/loginWithUserName
  ///
  /// Sends a POST request to the server's 'https://dull-jade-drill-tutu.cyclic.app/auth/loginWithUserName' endpoint
  /// with the provided headers and request data
  /// Returns a [PostLoginWithUserNameResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostLoginWithUserNameResp> loginWithUserName({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/loginWithUserName',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostLoginWithUserNameResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostLoginWithUserNameResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://dull-jade-drill-tutu.cyclic.app/auth/register/otp
  ///
  /// Sends a POST request to the server's 'https://dull-jade-drill-tutu.cyclic.app/auth/register/otp' endpoint
  /// with the provided headers and request data
  /// Returns a [PostRegisterOtpPostResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostRegisterOtpPostResp> registerOtpPost({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/register/otp',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostRegisterOtpPostResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostRegisterOtpPostResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://dull-jade-drill-tutu.cyclic.app/auth/register
  ///
  /// Sends a POST request to the server's 'https://dull-jade-drill-tutu.cyclic.app/auth/register' endpoint
  /// with the provided headers and request data
  /// Returns a [PostRegisterUserResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostRegisterUserResp> registerUser({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/register',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostRegisterUserResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostRegisterUserResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}
