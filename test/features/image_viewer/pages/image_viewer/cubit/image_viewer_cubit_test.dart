import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_viewer/core/core.dart';
import 'package:image_viewer/dependencies_injection.dart';
import 'package:image_viewer/features/features.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';

import '../../../../../helpers/fake_path_provider_platform.dart';
import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/paths.dart';
import 'image_viewer_cubit_test.mocks.dart';

@GenerateMocks([GetImageViewer])
void main() {
  late ImageViewerCubit imageViewerCubit;
  late MockGetImageViewer mockGetImageViewer;
  late ImageViewer imageViewer;

  const dummyImageViewerRequest1 =
      ImageViewerParams(key: String.fromEnvironment("API_KEY"));
  const errorMessage = "";

  /// Initialize data
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    PathProviderPlatform.instance = FakePathProvider();
    await serviceLocator(
        isUnitTest: true, prefixBox: 'imageViewer_cubit_test_',);

    imageViewer = ImageViewerResponse.fromJson(
      json.decode(jsonReader(imageViewerSuccessPath)) as Map<String, dynamic>,
    ).toEntity();
    mockGetImageViewer = MockGetImageViewer();
    imageViewerCubit = ImageViewerCubit(mockGetImageViewer);
  });

  /// Dispose bloc
  tearDown(() {
    imageViewerCubit.close();
  });

  ///  Initial data should be loading
  test("Initial data should be ImageViewerStatus.loading", () {
    expect(imageViewerCubit.state, const ImageViewerState.loading());
  });

  blocTest<ImageViewerCubit, ImageViewerState>(
    "When repo success get data should be return ImageViewerState and loading only show when request page 1",
    build: () {
      when(mockGetImageViewer.call(dummyImageViewerRequest1))
          .thenAnswer((_) async => Right(imageViewer));

      return imageViewerCubit;
    },
    act: (ImageViewerCubit imageViewerCubit) =>
        imageViewerCubit.imageViewer(dummyImageViewerRequest1),
    wait: const Duration(milliseconds: 100),
    expect: () => [
      const ImageViewerState.loading(),
      ImageViewerState.success(imageViewer),
    ],
  );

  blocTest<ImageViewerCubit, ImageViewerState>(
    "When failed to get data from server",
    build: () {
      when(
        mockGetImageViewer.call(dummyImageViewerRequest1),
      ).thenAnswer((_) async => const Left(ServerFailure(errorMessage)));

      return ImageViewerCubit(mockGetImageViewer);
    },
    act: (ImageViewerCubit imageViewerCubit) =>
        imageViewerCubit.imageViewer(dummyImageViewerRequest1),
    wait: const Duration(milliseconds: 100),
    expect: () => const [
      ImageViewerState.loading(),
      ImageViewerState.failure(errorMessage),
    ],
  );

  blocTest<ImageViewerCubit, ImageViewerState>(
    "When request refreshImageViewer",
    build: () {
      when(mockGetImageViewer.call(dummyImageViewerRequest1))
          .thenAnswer((_) async => Right(imageViewer));

      return ImageViewerCubit(mockGetImageViewer);
    },
    act: (ImageViewerCubit imageViewerCubit) =>
        imageViewerCubit.imageViewer(dummyImageViewerRequest1),
    wait: const Duration(milliseconds: 100),
    expect: () => [
      const ImageViewerState.loading(),
      ImageViewerState.success(imageViewer),
    ],
  );
}
