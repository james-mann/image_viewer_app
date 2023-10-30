import 'package:dartz/dartz.dart';
import 'package:image_viewer/core/core.dart';
import 'package:image_viewer/features/image_viewer/image_viewer.dart';

abstract class ImageViewerRemoteDatasource {
  Future<Either<Failure, ImageViewerResponse>> imageViewer(
    ImageViewerParams imageViewerParams,
  );
}

class ImageViewerRemoteDatasourceImpl implements ImageViewerRemoteDatasource {
  final DioClient _client;

  ImageViewerRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, ImageViewerResponse>> imageViewer(
    ImageViewerParams imageViewerParams,
  ) async {
    final modImageViewerParams = imageViewerParams.copyWith(
      key: const String.fromEnvironment("API_KEY"),
    );
    final response = await _client.getRequest(
      ListAPI.imageViewer,
      queryParameters: modImageViewerParams.toJson(),
      converter: (response) =>
          ImageViewerResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }
}
