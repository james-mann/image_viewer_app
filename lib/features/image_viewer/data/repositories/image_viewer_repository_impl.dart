import 'package:dartz/dartz.dart';
import 'package:image_viewer/core/core.dart';
import 'package:image_viewer/features/image_viewer/image_viewer.dart';

class ImageViewerRepositoryImpl implements ImageViewerRepository {
  /// Data Source
  final ImageViewerRemoteDatasource imageViewerRemoteDatasource;

  const ImageViewerRepositoryImpl(this.imageViewerRemoteDatasource);

  @override
  Future<Either<Failure, ImageViewer>> imageViewer(
    ImageViewerParams imageViewerParams,
  ) async {
    final response =
        await imageViewerRemoteDatasource.imageViewer(imageViewerParams);

    return response.fold(
      (failure) => Left(failure),
      (data) {
        if ((data.hits ?? []).isEmpty) return Left(NoDataFailure());
        return Right(data.toEntity());
      },
    );
  }
}
