import 'package:flutter/material.dart';
import 'package:image_viewer/core/core.dart';

class SpacerH extends StatelessWidget {
  const SpacerH({super.key, this.value});

  final double? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: value ?? Dimens.space8,
    );
  }
}
