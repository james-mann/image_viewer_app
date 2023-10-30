import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_viewer/core/core.dart';
import 'package:image_viewer/features/image_viewer/image_viewer.dart';

part 'get_image_viewer.freezed.dart';
part 'get_image_viewer.g.dart';

class GetImageViewer extends UseCase<ImageViewer, ImageViewerParams> {
  final ImageViewerRepository _repo;

  GetImageViewer(this._repo);

  @override
  Future<Either<Failure, ImageViewer>> call(ImageViewerParams params) =>
      _repo.imageViewer(params);
}

@freezed
class ImageViewerParams with _$ImageViewerParams {
  const factory ImageViewerParams({
    String? key,
    String? q,
  }) = _ImageViewerParams;

  factory ImageViewerParams.fromJson(Map<String, dynamic> json) =>
      _$ImageViewerParamsFromJson(json);
}
