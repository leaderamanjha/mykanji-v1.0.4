import '../../../core/app_export.dart';
import 'reportstatelayer_item_model.dart';

/// This class defines the variables used in the [report_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReportModel {
  Rx<List<ReportstatelayerItemModel>> reportstatelayerItemList = Rx([
    ReportstatelayerItemModel(
        violationImage: ImageConstant.imgContrast.obs,
        headlineText: "Violates Community Guidelines".obs,
        supportingText:
            "Offensive language, explicit images, or content that violates community standards."
                .obs,
        inboxButton: ImageConstant.imgInbox.obs)
  ]);
}
