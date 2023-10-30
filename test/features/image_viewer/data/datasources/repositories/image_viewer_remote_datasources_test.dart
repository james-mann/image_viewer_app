import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:image_viewer/core/core.dart';
import 'package:image_viewer/dependencies_injection.dart';
import 'package:image_viewer/features/image_viewer/image_viewer.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';

import '../../../../../helpers/fake_path_provider_platform.dart';
import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/paths.dart';

void main() {
  late DioAdapter dioAdapter;
  late ImageViewerRemoteDatasourceImpl dataSource;

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    PathProviderPlatform.instance = FakePathProvider();
    await serviceLocator(
      isUnitTest: true,
      prefixBox: 'imageViewer_remote_datasource_test_',
    );
    dioAdapter = DioAdapter(dio: sl<DioClient>().dio);
    dataSource = ImageViewerRemoteDatasourceImpl(sl<DioClient>());
  });

  group('imageViewer', () {
    const imageViewerParams =
        ImageViewerParams(key: String.fromEnvironment("API_KEY"));
    final imageViewerModel = ImageViewerResponse.fromJson(
      json.decode(jsonReader(imageViewerSuccessPath)) as Map<String, dynamic>,
    );
    final imageViewerEmptyModel = ImageViewerResponse.fromJson(
      json.decode(jsonReader(imageViewerEmptyPath)) as Map<String, dynamic>,
    );

    test(
      'should return list user success model when response code is 200',
      () async {
        /// arrange
        dioAdapter.onGet(
          ListAPI.imageViewer,
          (server) => server.reply(
            200,
            json.decode(jsonReader(imageViewerSuccessPath)),
          ),
          queryParameters: imageViewerParams.toJson(),
        );

        /// act
        final result = await dataSource.imageViewer(imageViewerParams);

        /// assert
        result.fold(
          (l) => expect(l, null),
          (r) => expect(r, imageViewerModel),
        );
      },
    );

    test(
      'should return empty list user success model when response code is 200',
      () async {
        /// arrange
        dioAdapter.onGet(
          ListAPI.imageViewer,
          (server) => server.reply(
            200,
            json.decode(jsonReader(imageViewerEmptyPath)),
          ),
          queryParameters: imageViewerParams.toJson(),
        );

        /// act
        final result = await dataSource.imageViewer(imageViewerParams);

        /// assert
        result.fold(
          (l) => expect(l, null),
          (r) => expect(r, imageViewerEmptyModel),
        );
      },
    );

    test(
      'should return user unsuccessful model when response code is 400',
      () async {
        /// arrange
        dioAdapter.onGet(
          ListAPI.imageViewer,
          (server) => server.reply(
            400,
            json.decode(jsonReader(imageViewerSuccessPath)),
          ),
          queryParameters: imageViewerParams.toJson(),
        );

        /// act
        final result = await dataSource.imageViewer(imageViewerParams);

        /// assert
        result.fold(
          (l) => expect(l, isA<ServerFailure>()),
          (r) => expect(r, null),
        );
      },
    );
  });
}
