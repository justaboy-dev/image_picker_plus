import 'dart:io';

class SelectImageConfig {

  /// [maxFilesSize] maximum file size can select
  final int maxFilesSize;

  /// [maxVideos] maximum videos can select
  final int maxVideos;

  /// [maxImages] maximum images can select
  final int maxImages;

  /// [maxVideoDuration] maximum video duration can select
  @Deprecated('Use maxFilesSize instead')
  final Duration maxVideoDuration;


  /// [maxFilesSizeError] error message when maximum file size exceeded
  final String maxFilesSizeError;


  final List<File> selectedFiles;

  SelectImageConfig({
    this.maxFilesSize = 0,
    this.maxVideos = 0,
    this.maxImages = 0,
    this.maxVideoDuration = const Duration(seconds: 0),
    this.maxFilesSizeError = 'Maximum file size exceeded',
    this.selectedFiles = const [],
  });

  SelectImageConfig copyWith({
    int? maxFilesSize,
    int? maxVideos,
    int? maxImages,
    Duration? maxVideoDuration,
    String? maxFilesSizeError,
    List<File>? selectedFiles,
  }) {
    return SelectImageConfig(
      maxFilesSize: maxFilesSize ?? this.maxFilesSize,
      maxVideos: maxVideos ?? this.maxVideos,
      maxImages: maxImages ?? this.maxImages,
      maxVideoDuration: maxVideoDuration ?? this.maxVideoDuration,
      maxFilesSizeError: maxFilesSizeError ?? this.maxFilesSizeError,
      selectedFiles: selectedFiles ?? this.selectedFiles,
    );
  }
}
