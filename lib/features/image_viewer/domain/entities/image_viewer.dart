import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_viewer.freezed.dart';

@freezed
class ImageViewer with _$ImageViewer {
  const factory ImageViewer({
    required List<Hit> hits,
  }) = _ImageViewer;
}

@freezed
class Hit with _$Hit {
  const factory Hit({
    int? id,
    String? pageUrl,
    String? type,
    List<String>? tags,
    String? previewUrl,
    String? largeImageUrl,
    int? imageWidth,
    int? imageHeight,
    int? imageSize,
    int? views,
    int? downloads,
    int? collections,
    int? likes,
    int? comments,
    @JsonKey(name: "user_id") int? userId,
    String? user,
    String? userImageUrl,
  }) = _Hit;
}
