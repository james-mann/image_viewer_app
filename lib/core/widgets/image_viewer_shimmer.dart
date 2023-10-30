import 'package:flutter/material.dart';
import 'package:image_viewer/core/core.dart';
import 'package:shimmer/shimmer.dart';

class ImageViewerShimmer extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;
  final Color baseColor;
  final Color? highlightColor;

  ImageViewerShimmer.rectangular({
    super.key,
    this.width = double.infinity,
    required this.height,
    this.baseColor = Palette.pinkMocha,
    double borderRadius = Dimens.cornerRadius,
    this.highlightColor,
  }) : shapeBorder = RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        );

  const ImageViewerShimmer.circular({
    super.key,
    this.width = double.infinity,
    required this.height,
    this.baseColor = Palette.pinkMocha,
    this.shapeBorder = const CircleBorder(),
    this.highlightColor,
  });

  const ImageViewerShimmer.custom({
    super.key,
    this.width = double.infinity,
    required this.height,
    this.baseColor = Palette.pinkMocha,
    required this.shapeBorder,
    this.highlightColor,
  });

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: baseColor,
        highlightColor: highlightColor ?? Palette.background,
        period: const Duration(seconds: 1),
        child: Container(
          width: width,
          height: height,
          decoration: ShapeDecoration(
            color: Colors.grey[400],
            shape: shapeBorder,
          ),
        ),
      );
}
