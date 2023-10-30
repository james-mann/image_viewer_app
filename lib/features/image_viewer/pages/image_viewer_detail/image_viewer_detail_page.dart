import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_viewer/core/core.dart';
import 'package:image_viewer/features/image_viewer/image_viewer.dart';
import 'package:image_viewer/utils/utils.dart';

class ImageViewerDetailPage extends StatelessWidget {
  const ImageViewerDetailPage({super.key, this.hit});

  final Hit? hit;

  @override
  Widget build(BuildContext context) {
    return Parent(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              key: Key(hit?.id.toString() ?? ""),
              transitionOnUserGestures: true,
              tag: hit?.id.toString() ?? "",
              child: Stack(
                children: [
                  ImageNetwork(
                    imageUrl: hit?.largeImageUrl ?? "",
                    width: double.maxFinite,
                    height: context.heightInPercent(70),
                    placeholder: ImageViewerShimmer.rectangular(
                      height: context.heightInPercent(70),
                      width: double.maxFinite,
                      borderRadius: Dimens.zero,
                    ),
                  ),
                  Positioned(
                    bottom: Dimens.space16,
                    left: Dimens.space16,
                    child: Container(
                      padding: EdgeInsets.all(Dimens.space8),
                      decoration: BoxDecoration(
                        color: Palette.pinkMocha.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(Dimens.space16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleImage(
                                url: hit?.userImageUrl ?? "",
                                size: Dimens.space40,
                              ),
                              const SpacerH(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    hit?.user ?? "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge700
                                        ?.copyWith(color: Palette.textDark),
                                  ),
                                  Text(
                                    hit?.userId.toString() ?? "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(color: Palette.textDark),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: Dimens.space16,
                    bottom: Dimens.space16,
                    child: Row(
                      children: [
                        const Icon(Icons.download),
                        const SpacerH(),
                        Text(
                          hit?.downloads?.toString() ?? "0",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium500
                              ?.copyWith(color: Palette.textDark),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(Dimens.space16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.remove_red_eye),
                      const SpacerH(),
                      Text(
                        hit?.views?.toString() ?? "0",
                        style: Theme.of(context).textTheme.bodyMedium500,
                      ),
                      SpacerH(value: Dimens.space16),
                      const Icon(Icons.thumb_up),
                      const SpacerH(),
                      Text(
                        hit?.likes?.toString() ?? "0",
                        style: Theme.of(context).textTheme.bodyMedium500,
                      ),
                    ],
                  ),
                  SpacerV(value: Dimens.space16),
                  Text(
                    Strings.of(context)!.imageResolution(
                      "${hit?.imageWidth}x${hit?.imageHeight}",
                    ),
                    style: Theme.of(context).textTheme.bodyMedium500,
                  ),
                  Text(
                    Strings.of(context)!
                        .imageSize(hit?.imageSize?.toString() ?? ""),
                    style: Theme.of(context).textTheme.bodyMedium500,
                  ),
                  SpacerV(value: Dimens.space16),
                  Row(
                    children: [
                      Text(
                        Strings.of(context)!.tags,
                        style: Theme.of(context).textTheme.bodyMedium500,
                      ),
                      Wrap(
                        runSpacing: Dimens.space2,
                        spacing: Dimens.space4,
                        children: hit?.tags
                                ?.map(
                                  (e) => Chip(
                                    label: Text(
                                      e,
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                    padding: EdgeInsets.zero,
                                  ),
                                )
                                .toList() ??
                            [],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
