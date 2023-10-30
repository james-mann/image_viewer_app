import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:image_viewer/features/features.dart';

import '../../../../../helpers/json_reader.dart';
import '../../../../../helpers/paths.dart';

void main() {
  const loginResponse = LoginResponse(token: 'dummy token');

  test('from json, should return a valid model from json', () {
    /// arrange
    final jsonMap = json.decode(jsonReader(successLoginPath));

    /// act
    final result = LoginResponse.fromJson(jsonMap as Map<String, dynamic>);

    /// assert
    expect(result, equals(loginResponse));
  });

  test('to json, should return a json map containing proper data', () {
    /// act
    final result = loginResponse.toJson();

    /// arrange
    final exceptedJson = {
      "token": 'dummy token',
    };

    /// assert
    expect(result, equals(exceptedJson));
  });
}
