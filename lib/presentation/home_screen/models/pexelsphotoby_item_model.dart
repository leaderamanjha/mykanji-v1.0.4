import '../../../core/app_export.dart';

/// This class is used in the [pexelsphotoby_item_widget] screen.
class PexelsphotobyItemModel {
  PexelsphotobyItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
