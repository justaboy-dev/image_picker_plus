import 'package:image_picker_plus/image_picker_plus.dart';
import 'package:image_picker_plus/src/gallery_display.dart';
import 'package:image_picker_plus/src/utilities/enum.dart';
import 'package:flutter/material.dart';

class ImagePickerPlus {
  final BuildContext _context;
  ImagePickerPlus(this._context);

  Future<SelectedImagesDetails?> pickImage({
    required ImageSource source,
    GalleryDisplaySettings? galleryDisplaySettings,
    bool multiImages = false,
    SelectImageConfig? selectImageConfig,
  }) async {
    return _pushToCustomPicker(
      galleryDisplaySettings: galleryDisplaySettings,
      multiSelection: multiImages,
      pickerSource: PickerSource.image,
      source: source,
      selectImageConfig: selectImageConfig,
    );
  }

  Future<SelectedImagesDetails?> pickVideo({
    required ImageSource source,
    GalleryDisplaySettings? galleryDisplaySettings,
    bool multiVideos = false,
    SelectImageConfig? selectImageConfig,
  }) async {
    return _pushToCustomPicker(
      galleryDisplaySettings: galleryDisplaySettings,
      multiSelection: multiVideos,
      pickerSource: PickerSource.video,
      source: source,
      selectImageConfig: selectImageConfig,
    );
  }

  Future<SelectedImagesDetails?> pickBoth({
    required ImageSource source,
    GalleryDisplaySettings? galleryDisplaySettings,
    bool multiSelection = false,
    SelectImageConfig? selectImageConfig,
  }) async {
    return _pushToCustomPicker(
      galleryDisplaySettings: galleryDisplaySettings,
      multiSelection: multiSelection,
      pickerSource: PickerSource.both,
      source: source,
      selectImageConfig: selectImageConfig,
    );
  }

  Future<SelectedImagesDetails?> _pushToCustomPicker({
    required ImageSource source,
    GalleryDisplaySettings? galleryDisplaySettings,
    bool multiSelection = false,
    required PickerSource pickerSource,
    SelectImageConfig? selectImageConfig,
  }) async {
    return await Navigator.of(_context, rootNavigator: true).push(
      MaterialPageRoute(
        builder: (context) => CustomImagePicker(
          galleryDisplaySettings: galleryDisplaySettings,
          multiSelection: multiSelection,
          pickerSource: pickerSource,
          source: source,
          selectImageConfig: selectImageConfig,
        ),
        maintainState: false,
      ),
    );
  }
}
