import '../../../core/app_export.dart';

/// This class is used in the [reportstatelayer_item_widget] screen.
class ReportstatelayerItemModel {
  ReportstatelayerItemModel({
    this.violationImage,
    this.headlineText,
    this.supportingText,
    this.inboxButton,
    this.id,
  }) {
    violationImage = violationImage ?? Rx(ImageConstant.imgContrast);
    headlineText = headlineText ?? Rx("Violates Community Guidelines");
    supportingText = supportingText ??
        Rx("Offensive language, explicit images, or content that violates community standards.");
    inboxButton = inboxButton ?? Rx(ImageConstant.imgInbox);
    id = id ?? Rx("");
  }

  Rx<String>? violationImage;

  Rx<String>? headlineText;

  Rx<String>? supportingText;

  Rx<String>? inboxButton;

  Rx<String>? id;
}
