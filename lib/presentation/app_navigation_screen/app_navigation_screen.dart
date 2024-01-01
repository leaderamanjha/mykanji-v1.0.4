import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Sign up One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "SignUpOtp".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupotpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "LoginTwo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logintwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "LoginWithNumber".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginwithnumberScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "LoginOtp".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginotpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ForgotPassword".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotpasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ForgetPasswordOtp".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgetpasswordotpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ResetPassword".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetpasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ShopingCategory - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.shopingcategoryTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ProductScreen - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productscreenContainer1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "OneProduct".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.oneproductScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Report".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reportScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
