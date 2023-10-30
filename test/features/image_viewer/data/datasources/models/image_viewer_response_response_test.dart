import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:image_viewer/features/features.dart';

import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/paths.dart';

void main() {
  final imageViewerResponse = ImageViewerResponse(
    totalHits: 500,
    total: 1772958,
    hits: [
      HitResponse.fromJson({
        "id": 8336497,
        "pageURL":
            "https://pixabay.com/photos/landscape-sea-ice-darling-clouds-8336497/",
        "type": "photo",
        "tags": "landscape, sea, ice",
        "previewURL":
            "https://cdn.pixabay.com/photo/2023/10/23/17/10/landscape-8336497_150.jpg",
        "previewWidth": 150,
        "previewHeight": 100,
        "webformatURL":
            "https://pixabay.com/get/g3c9dfc03c67bcd64be4d4e948683af35b7f9721fc2f90f683b7ed05fbb15f3c42f6fb15f727d7c1b9b22ced47f4e894a993abb1f1289a284c609ef7472879aaf_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 427,
        "largeImageURL":
            "https://pixabay.com/get/g8984f558f262b59ca2ac013472ba3ade4f4aadf79160e5fd0087f3fed62f48e28bc6fac8482e74beda739f19996525ed11ddad6900cfbd3fcab1fdb9048044b1_1280.jpg",
        "imageWidth": 7087,
        "imageHeight": 4724,
        "imageSize": 8484281,
        "views": 1356,
        "downloads": 1187,
        "collections": 8,
        "likes": 59,
        "comments": 26,
        "user_id": 3764790,
        "user": "ELG21",
        "userImageURL":
            "https://cdn.pixabay.com/user/2022/04/07/18-24-56-559_250x250.jpg",
      }),
    ],
  );

  test('from json, should return a valid model from json', () {
    /// arrange
    final jsonMap = json.decode(jsonReader(imageViewerSuccessPath));

    /// act
    final result =
        ImageViewerResponse.fromJson(jsonMap as Map<String, dynamic>);

    /// assert
    expect(result, equals(imageViewerResponse));
  });

  test('to json, should return a json map containing proper data', () {
    /// act
    final result = imageViewerResponse.toJson();

    /// arrange
    final exceptedJson = {
      "total": 1772958,
      "totalHits": 500,
      "hits": [
        {
          "id": 8336497,
          "pageURL":
              "https://pixabay.com/photos/landscape-sea-ice-darling-clouds-8336497/",
          "type": "photo",
          "tags": "landscape, sea, ice",
          "previewURL":
              "https://cdn.pixabay.com/photo/2023/10/23/17/10/landscape-8336497_150.jpg",
          "previewWidth": 150,
          "previewHeight": 100,
          "webformatURL":
              "https://pixabay.com/get/g3c9dfc03c67bcd64be4d4e948683af35b7f9721fc2f90f683b7ed05fbb15f3c42f6fb15f727d7c1b9b22ced47f4e894a993abb1f1289a284c609ef7472879aaf_640.jpg",
          "webformatWidth": 640,
          "webformatHeight": 427,
          "largeImageURL":
              "https://pixabay.com/get/g8984f558f262b59ca2ac013472ba3ade4f4aadf79160e5fd0087f3fed62f48e28bc6fac8482e74beda739f19996525ed11ddad6900cfbd3fcab1fdb9048044b1_1280.jpg",
          "imageWidth": 7087,
          "imageHeight": 4724,
          "imageSize": 8484281,
          "views": 1356,
          "downloads": 1187,
          "collections": 8,
          "likes": 59,
          "comments": 26,
          "user_id": 3764790,
          "user": "ELG21",
          "userImageURL":
              "https://cdn.pixabay.com/user/2022/04/07/18-24-56-559_250x250.jpg",
        }
      ],
    };

    /// assert
    expect(result, equals(exceptedJson));
  });
}
