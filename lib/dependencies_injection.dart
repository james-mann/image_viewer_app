import 'package:get_it/get_it.dart';
import 'package:image_viewer/core/core.dart';
import 'package:image_viewer/features/features.dart';
import 'package:image_viewer/utils/utils.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator({
  bool isUnitTest = false,
  bool isHiveEnable = true,
  String prefixBox = '',
}) async {
  /// For unit testing only
  if (isUnitTest) {
    await sl.reset();
  }
  sl.registerSingleton<DioClient>(DioClient(isUnitTest: isUnitTest));
  _dataSources();
  _repositories();
  _useCase();
  _cubit();
  if (isHiveEnable) {
    await _initHiveBoxes(
      isUnitTest: isUnitTest,
      prefixBox: prefixBox,
    );
  }
}

Future<void> _initHiveBoxes({
  bool isUnitTest = false,
  String prefixBox = '',
}) async {
  await MainBoxMixin.initHive(prefixBox);
  sl.registerSingleton<MainBoxMixin>(MainBoxMixin());
}

/// Register repositories
void _repositories() {
  /// Auth
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(sl(), sl()),
  );

  /// ImageViewer
  sl.registerLazySingleton<ImageViewerRepository>(
    () => ImageViewerRepositoryImpl(sl()),
  );
}

/// Register dataSources
void _dataSources() {
  /// Auth
  sl.registerLazySingleton<AuthRemoteDatasource>(
    () => AuthRemoteDatasourceImpl(),
  );

  /// ImageViewer
  sl.registerLazySingleton<ImageViewerRemoteDatasource>(
    () => ImageViewerRemoteDatasourceImpl(sl()),
  );
}

void _useCase() {
  /// Auth
  sl.registerLazySingleton(() => PostLogin(sl()));

  /// ImageViewer
  sl.registerLazySingleton(() => GetImageViewer(sl()));
}

void _cubit() {
  /// Auth
  sl.registerFactory(() => AuthCubit(sl()));

  /// ImageViewer
  sl.registerFactory(() => ImageViewerCubit(sl()));
}
