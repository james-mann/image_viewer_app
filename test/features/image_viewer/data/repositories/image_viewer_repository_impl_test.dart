import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_viewer/core/core.dart';
import 'package:image_viewer/dependencies_injection.dart';
import 'package:image_viewer/features/image_viewer/image_viewer.dart';
import 'package:mockito/mockito.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';

import '../../../../helpers/fake_path_provider_platform.dart';
import '../../../../helpers/json_reader.dart';
import '../../../../helpers/paths.dart';
import '../../../../helpers/test_mock.mocks.dart';

void main() {
  late MockImageViewerRemoteDatasource mockImageViewerRemoteDatasource;
  late ImageViewerRepositoryImpl authRepositoryImpl;
  late ImageViewer imageViewer;

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    PathProviderPlatform.instance = FakePathProvider();
    await serviceLocator(
      isUnitTest: true,
      prefixBox: 'imageViewer_repository_impl_test_',
    );
    mockImageViewerRemoteDatasource = MockImageViewerRemoteDatasource();
    authRepositoryImpl =
        ImageViewerRepositoryImpl(mockImageViewerRemoteDatasource);
    imageViewer = ImageViewerResponse.fromJson(
      json.decode(jsonReader(imageViewerSuccessPath)) as Map<String, dynamic>,
    ).toEntity();
  });

  group("imageViewer", () {
    const imageViewerParams = ImageViewerParams();
    const imageViewerParamsEmpty =
        ImageViewerParams(key: String.fromEnvironment("API_KEY"));

    test('should return list imageViewer when call data is successful',
        () async {
      // arrange
      when(mockImageViewerRemoteDatasource.imageViewer(imageViewerParams))
          .thenAnswer(
        (_) async => Right(
          ImageViewerResponse.fromJson(
            json.decode(jsonReader(imageViewerSuccessPath))
                as Map<String, dynamic>,
          ),
        ),
      );

      // act
      final result = await authRepositoryImpl.imageViewer(imageViewerParams);

      // assert
      verify(mockImageViewerRemoteDatasource.imageViewer(imageViewerParams));
      expect(result, equals(Right(imageViewer)));
    });

    test(
      'should return empty list imageViewer when call data is successful',
      () async {
        // arrange
        when(mockImageViewerRemoteDatasource
                .imageViewer(imageViewerParamsEmpty),)
            .thenAnswer(
          (_) async => Left(NoDataFailure()),
        );

        // act
        final result =
            await authRepositoryImpl.imageViewer(imageViewerParamsEmpty);

        // assert
        verify(mockImageViewerRemoteDatasource
            .imageViewer(imageViewerParamsEmpty),);
        expect(result, equals(Left(NoDataFailure())));
      },
    );

    test(
      'should return server failure when call data is unsuccessful',
      () async {
        // arrange
        when(mockImageViewerRemoteDatasource.imageViewer(imageViewerParams))
            .thenAnswer((_) async => const Left(ServerFailure('')));

        // act
        final result = await authRepositoryImpl.imageViewer(imageViewerParams);

        // assert
        verify(mockImageViewerRemoteDatasource.imageViewer(imageViewerParams));
        expect(result, equals(const Left(ServerFailure(''))));
      },
    );
  });
}
