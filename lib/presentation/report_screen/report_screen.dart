import '../report_screen/widgets/reportstatelayer_item_widget.dart';
import 'controller/report_controller.dart';
import 'models/reportstatelayer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';
import 'package:mykanji/widgets/app_bar/appbar_subtitle.dart';
import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';
import 'package:mykanji/widgets/custom_icon_button.dart';
import 'package:mykanji/widgets/custom_text_form_field.dart';

class ReportScreen extends GetWidget<ReportController> {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 19.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 10.v),
                        child: Column(children: [
                          _buildReportFrame(),
                          SizedBox(height: 35.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("msg_please_select_reason".tr,
                                      style: CustomTextStyles
                                          .titleMediumCabinBlack900))),
                          SizedBox(height: 8.v),
                          _buildReportStateLayer(),
                          SizedBox(height: 27.v),
                          _buildOtherStateLayer(),
                          SizedBox(height: 28.v),
                          _buildIssueFrame(),
                          SizedBox(height: 26.v),
                          _buildButtonFrame(),
                          SizedBox(height: 25.v),
                          SizedBox(
                              width: 108.h,
                              child: Divider(color: appTheme.gray90002))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_report".tr),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildReportFrame() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_report_service_provider".tr,
              style: CustomTextStyles.titleMediumCabinBlack900),
          SizedBox(height: 8.v),
          Container(
              decoration: AppDecoration.outlineBlack
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgFrame,
                    height: 64.adaptSize,
                    width: 64.adaptSize,
                    radius: BorderRadius.circular(4.h)),
                Padding(
                    padding: EdgeInsets.only(left: 8.h, top: 10.v, bottom: 7.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_service_provider".tr,
                              style: CustomTextStyles.titleMediumCabinGray900),
                          SizedBox(height: 8.v),
                          Text("lbl_rating_4_3".tr,
                              style: CustomTextStyles.bodyMediumGray900)
                        ]))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildReportStateLayer() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 14.5.v),
                  child: SizedBox(
                      width: 380.h,
                      child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.blueGray100)));
            },
            itemCount: controller
                .reportModelObj.value.reportstatelayerItemList.value.length,
            itemBuilder: (context, index) {
              ReportstatelayerItemModel model = controller
                  .reportModelObj.value.reportstatelayerItemList.value[index];
              return ReportstatelayerItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildOtherStateLayer() {
    return Padding(
        padding: EdgeInsets.only(left: 32.h, right: 40.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgContrastGray90004,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, bottom: 3.v),
              child: Text("lbl_other".tr,
                  style: CustomTextStyles.bodyLargeRobotoGray900)),
          Spacer(),
          CustomIconButton(
              height: 20.adaptSize,
              width: 20.adaptSize,
              child:
                  CustomImageView(imagePath: ImageConstant.imgInboxGray90004))
        ]));
  }

  /// Section Widget
  Widget _buildIssueFrame() {
    return Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillGray50,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Text("msg_issue_description".tr,
                  style: CustomTextStyles.titleMediumCabinBlack900),
              SizedBox(height: 7.v),
              CustomTextFormField(
                  controller: controller.editTextController,
                  textInputAction: TextInputAction.done)
            ]));
  }

  /// Section Widget
  Widget _buildButtonFrame() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomElevatedButton(
                  height: 40.v,
                  text: "lbl_cancel".tr,
                  margin: EdgeInsets.only(right: 12.h),
                  buttonStyle: CustomButtonStyles.fillGray,
                  buttonTextStyle: CustomTextStyles.titleSmallRobotoGray50)),
          Expanded(
              child: CustomElevatedButton(
                  height: 40.v,
                  text: "lbl_report".tr,
                  margin: EdgeInsets.only(left: 12.h),
                  buttonStyle: CustomButtonStyles.fillBlueGray,
                  buttonTextStyle: CustomTextStyles.titleSmallRobotoGray50))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
