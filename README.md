<br>

# Image Viewer App 🌄

This is an App with Login _(hardcoded email and password)_ and List Image from [Pixabay](https://pixabay.com/api/docs/).
<br>This app also implementing **Flutter Clean Architecture with TDD.**


## Pre-requisites 📐

| Technology | Recommended Version | Installation Guide                                                    |
|------------|---------------------|-----------------------------------------------------------------------|
| Flutter    | v3.13.x             | [Flutter Official Docs](https://flutter.dev/docs/get-started/install) |
| Dart       | v3.1.x              | Installed automatically with Flutter                                  |

## Get Started 🚀

- Clone this project
- Run `flutter pub get`
- Run `flutter gen-l10n` to generate localization files
- Run `flutter pub run build_runner build --delete-conflicting-outputs` to generate freezes files
- Run `flutter run --flavor stg -t lib/main.dart --dart-define-from-file .env.stg.json` for **staging** only for now
- Run Test `flutter test`
- To generate mock class `dart pub run build_runner build`
- Use this data to login Email: test@test.com, Password: password123 




## Feature ✅

- [x] BLoC State Management
- [x] **Clean Architecture with TDD**
    - [x] Unit Test
    - [x] Widget Test
    - [x] BLoC test
- [x] Login
- [x] List Image
- [x] Detail Image


## Maestro Test 🧪
- [Install Maestro](https://maestro.mobile.dev/getting-started/installing-maestro) 
- Run `maestro test maestro-stg/main.yaml`

<br>

![Maestro Test](https://github.com/james-mann/image_viewer_app/blob/main/maestro_test.mov)

## Architecture Proposal by [Resocoder](https://github.com/ResoCoder/flutter-tdd-clean-architecture-course)

<br>

![architecture-proposal](./architecture-proposal.png)

### Project Structure

<details>

````

lib/
├── core
│   ├── api
│   │   ├── api.dart
│   │   ├── dio_client.dart
│   │   ├── dio_interceptor.dart
│   │   ├── isolate_parser.dart
│   │   └── list_api.dart
│   ├── app_route.dart
│   ├── core.dart
│   ├── core_mapper.dart
│   ├── error
│   │   ├── error.dart
│   │   ├── exceptions.dart
│   │   └── failure.dart
│   ├── localization
│   │   ├── generated
│   │   │   ├── strings.dart
│   │   │   └── strings_en.dart
│   │   ├── intl_en.arb
│   │   ├── l10n.dart
│   │   └── localization.dart
│   ├── resources
│   │   ├── dimens.dart
│   │   ├── images.dart
│   │   ├── palette.dart
│   │   ├── resources.dart
│   │   └── styles.dart
│   ├── usecase
│   │   └── usecase.dart
│   └── widgets
│       ├── button.dart
│       ├── circle_image.dart
│       ├── color_loaders.dart
│       ├── custom_dialog.dart
│       ├── disable_focus_node.dart
│       ├── empty.dart
│       ├── image_network.dart
│       ├── loading.dart
│       ├── image_viewer_shimmer.dart
│       ├── parent.dart
│       ├── spacer_h.dart
│       ├── spacer_v.dart
│       ├── text_f.dart
│       ├── toast.dart
│       └── widgets.dart
├── dependencies_injection.dart
├── features
│   ├── auth
│   │   ├── auth.dart
│   │   ├── data
│   │   │   ├── data.dart
│   │   │   ├── datasources
│   │   │   │   ├── auth_remote_datasources.dart
│   │   │   │   └── datasources.dart
│   │   │   ├── models
│   │   │   │   ├── login_response.dart
│   │   │   │   ├── login_response.freezed.dart
│   │   │   │   ├── login_response.g.dart
│   │   │   │   └── models.dart
│   │   │   └── repositories
│   │   │       ├── auth_repository_impl.dart
│   │   │       └── repositories.dart
│   │   ├── domain
│   │   │   ├── domain.dart
│   │   │   ├── entities
│   │   │   │   ├── entities.dart
│   │   │   │   ├── login.dart
│   │   │   │   └── login.freezed.dart
│   │   │   ├── repositories
│   │   │   │   ├── auth_repository.dart
│   │   │   │   └── repositories.dart
│   │   │   └── usecases
│   │   │       ├── post_login.dart
│   │   │       ├── post_login.freezed.dart
│   │   │       ├── post_login.g.dart
│   │   │       └── usecases.dart
│   │   └── pages
│   │       ├── login
│   │       │   ├── cubit
│   │       │   │   ├── auth_cubit.dart
│   │       │   │   ├── auth_cubit.freezed.dart
│   │       │   │   ├── auth_state.dart
│   │       │   │   └── cubit.dart
│   │       │   ├── login.dart
│   │       │   └── login_page.dart
│   │       └── pages.dart
│   ├── features.dart
│   └── image_viewer
│       ├── data
│       │   ├── data.dart
│       │   ├── datasources
│       │   │   ├── datasources.dart
│       │   │   └── image_viewer_remote_datasources.dart
│       │   ├── models
│       │   │   ├── image_viewer_response.dart
│       │   │   ├── image_viewer_response.freezed.dart
│       │   │   ├── image_viewer_response.g.dart
│       │   │   └── models.dart
│       │   └── repositories
│       │       ├── image_viewer_repository_impl.dart
│       │       └── repositories.dart
│       ├── domain
│       │   ├── domain.dart
│       │   ├── entities
│       │   │   ├── entities.dart
│       │   │   ├── image_viewer.dart
│       │   │   └── image_viewer.freezed.dart
│       │   ├── repositories
│       │   │   ├── image_viewer_repository.dart
│       │   │   └── repositories.dart
│       │   └── usecases
│       │       ├── get_image_viewer.dart
│       │       ├── get_image_viewer.freezed.dart
│       │       ├── get_image_viewer.g.dart
│       │       └── usecases.dart
│       ├── image_viewer.dart
│       └── pages
│           ├── image_viewer_detail
│           │   ├── image_viewer_detail.dart
│           │   └── image_viewer_detail_page.dart
│           ├── image_viewer_list
│           │   ├── cubit
│           │   │   ├── cubit.dart
│           │   │   ├── image_viewer_cubit.dart
│           │   │   ├── image_viewer_cubit.freezed.dart
│           │   │   └── image_viewer_state.dart
│           │   ├── image_viewer_appbar.dart
│           │   ├── image_viewer_list.dart
│           │   ├── image_viewer_list_empty.dart
│           │   ├── image_viewer_list_loading.dart
│           │   ├── image_viewer_list_page.dart
│           │   └── image_viewer_list_success.dart
│           └── pages.dart
├── image_viewer_app.dart
├── main.dart
└── utils
    ├── ext
    │   ├── context.dart
    │   ├── ext.dart
    │   ├── string.dart
    │   ├── text_theme.dart
    │   └── widget.dart
    ├── helper
    │   ├── common.dart
    │   ├── constant.dart
    │   ├── data_helper.dart
    │   ├── data_helper.freezed.dart
    │   ├── go_router_refresh_stream.dart
    │   └── helper.dart
    ├── services
    │   ├── hive
    │   │   ├── hive.dart
    │   │   └── main_box.dart
    │   └── services.dart
    └── utils.dart

40 directories, 116 files

````

</details>

### Test Project Structure

<details>

````

test/
├── features
│   ├── auth
│   │   ├── data
│   │   │   ├── datasources
│   │   │   │   ├── models
│   │   │   │   │   └── login_response_test.dart
│   │   │   │   └── repositories
│   │   │   │       └── auth_remote_datasources_test.dart
│   │   │   └── repositories
│   │   │       └── auth_repository_impl_test.dart
│   │   ├── domain
│   │   │   └── usecases
│   │   │       └── post_login_test.dart
│   │   └── pages
│   │       └── login
│   │           └── cubit
│   │               ├── auth_cubit_test.dart
│   │               ├── auth_cubit_test.mocks.dart
│   │               └── auth_state_test.dart
│   └── image_viewer
│       ├── data
│       │   ├── datasources
│       │   │   ├── models
│       │   │   │   └── image_viewer_response_response_test.dart
│       │   │   └── repositories
│       │   │       └── image_viewer_remote_datasources_test.dart
│       │   └── repositories
│       │       └── image_viewer_repository_impl_test.dart
│       ├── domain
│       │   └── usecases
│       │       └── get_image_viewer.dart
│       └── pages
│           └── image_viewer
│               └── cubit
│                   ├── image_viewer_cubit_test.dart
│                   ├── image_viewer_cubit_test.mocks.dart
│                   └── image_viewer_state_test.dart
└── helpers
    ├── fake_path_provider_platform.dart
    ├── json_reader.dart
    ├── paths.dart
    ├── stubs
    │   ├── image_viewer_empty_response.json
    │   ├── image_viewer_success_response.json
    │   ├── login_success_response.json
    │   └── login_unsuccessful_response.json
    ├── test_mock.dart
    └── test_mock.mocks.dart

26 directories, 23 files

````

</details>

