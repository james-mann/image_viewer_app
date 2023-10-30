import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_viewer/features/features.dart';

part 'image_viewer_response.freezed.dart';
part 'image_viewer_response.g.dart';

@freezed
class ImageViewerResponse with _$ImageViewerResponse {
  const factory ImageViewerResponse({
    int? total,
    int? totalHits,
    List<HitResponse>? hits,
  }) = _ImageViewerResponse;

  factory ImageViewerResponse.fromJson(Map<String, dynamic> json) =>
      _$ImageViewerResponseFromJson(json);

  const ImageViewerResponse._();

  ImageViewer toEntity() => ImageViewer(
        hits: (hits ?? [])
            .map(
              (e) => Hit(
                id: e.id,
                pageUrl: e.pageUrl,
                type: e.type,
                tags: e.tags?.split(",").map((e) => e).toList(),
                previewUrl: e.previewUrl,
                largeImageUrl: e.largeImageUrl,
                imageWidth: e.imageWidth,
                imageHeight: e.imageHeight,
                imageSize: e.imageSize,
                views: e.views,
                downloads: e.downloads,
                collections: e.collections,
                likes: e.likes,
                comments: e.comments,
                userId: e.userId,
                user: e.user,
                userImageUrl: e.userImageUrl,
              ),
            )
            .toList(),
      );
}

@freezed
class HitResponse with _$HitResponse {
  const factory HitResponse({
    int? id,
    @JsonKey(name: "pageURL") String? pageUrl,
    String? type,
    String? tags,
    @JsonKey(name: "previewURL") String? previewUrl,
    int? previewWidth,
    int? previewHeight,
    @JsonKey(name: "webformatURL") String? webformatUrl,
    int? webformatWidth,
    int? webformatHeight,
    @JsonKey(name: "largeImageURL") String? largeImageUrl,
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
    @JsonKey(name: "userImageURL") String? userImageUrl,
  }) = _HitResponse;

  factory HitResponse.fromJson(Map<String, dynamic> json) =>
      _$HitResponseFromJson(json);
}
