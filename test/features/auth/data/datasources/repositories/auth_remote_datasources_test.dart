import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:image_viewer/core/core.dart';
import 'package:image_viewer/dependencies_injection.dart';
import 'package:image_viewer/features/features.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';

import '../../../../../helpers/fake_path_provider_platform.dart';
import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/paths.dart';

void main() {
  late AuthRemoteDatasourceImpl dataSource;

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    PathProviderPlatform.instance = FakePathProvider();
    await serviceLocator(
      isUnitTest: true,
      prefixBox: 'auth_remote_datasource_test_',
    );
    dataSource = AuthRemoteDatasourceImpl();
  });

  group('login', () {
    const loginParams =
        LoginParams(email: "test@test.com", password: "password123");
    final loginModel = LoginResponse.fromJson(
      json.decode(jsonReader(successLoginPath)) as Map<String, dynamic>,
    );

    test(
      'should return login success model when response code is 200',
      () async {
        /// arrange

        /// act
        final result = await dataSource.login(loginParams);

        /// assert
        result.fold(
          (l) => expect(l, null),
          (r) => expect(r, loginModel),
        );
      },
    );

    test(
      'should return login unsuccessful model when response code is 400',
      () async {
        /// arrange put wrong email or password
        const loginParams = LoginParams();

        /// act
        final result = await dataSource.login(loginParams);

        /// assert
        result.fold(
          (l) => expect(l, isA<ServerFailure>()),
          (r) => expect(r, null),
        );
      },
    );
  });
}
