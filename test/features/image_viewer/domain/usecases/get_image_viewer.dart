import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_viewer/features/image_viewer/image_viewer.dart';
import 'package:mockito/mockito.dart';

import '../../../../helpers/json_reader.dart';
import '../../../../helpers/paths.dart';
import '../../../../helpers/test_mock.mocks.dart';

void main() {
  late MockImageViewerRepository mockImageViewerRepository;
  late GetImageViewer getImageViewer;
  late ImageViewer imageViewers;
  const imageViewersParams = ImageViewerParams();

  setUp(() {
    imageViewers = ImageViewerResponse.fromJson(
      json.decode(jsonReader(imageViewerSuccessPath)) as Map<String, dynamic>,
    ).toEntity();
    mockImageViewerRepository = MockImageViewerRepository();
    getImageViewer = GetImageViewer(mockImageViewerRepository);
  });

  test("should get imageViewers from the repository", () async {
    /// arrange
    when(mockImageViewerRepository.imageViewer(imageViewersParams))
        .thenAnswer((_) async => Right(imageViewers));

    /// act
    final result = await getImageViewer.call(imageViewersParams);

    /// assert
    expect(result, equals(Right(imageViewers)));
  });
}
