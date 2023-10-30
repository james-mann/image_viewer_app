import 'package:flutter/material.dart';

extension WidgetExtensions on Widget? {
  Padding padding({required EdgeInsets edgeInsets}) =>
      Padding(padding: edgeInsets, child: this);

  Container margin({EdgeInsets? edgeInsets}) => Container(
        margin: (edgeInsets == null) ? EdgeInsets.zero : edgeInsets,
        child: this,
      );
}
