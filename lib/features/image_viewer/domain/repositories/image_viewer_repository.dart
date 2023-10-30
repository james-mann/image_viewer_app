import 'package:dartz/dartz.dart';
import 'package:image_viewer/core/core.dart';
import 'package:image_viewer/features/image_viewer/image_viewer.dart';

abstract class ImageViewerRepository {
  Future<Either<Failure, ImageViewer>> imageViewer(
    ImageViewerParams imageViewerParams,
  );
}
