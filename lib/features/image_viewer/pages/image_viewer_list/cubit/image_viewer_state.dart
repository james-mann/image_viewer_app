part of 'image_viewer_cubit.dart';

@freezed
class ImageViewerState with _$ImageViewerState {
  const factory ImageViewerState.loading() = _Loading;

  const factory ImageViewerState.success(ImageViewer? data) = _Success;

  const factory ImageViewerState.failure(String message) = _Failure;

  const factory ImageViewerState.empty() = _Empty;
}
