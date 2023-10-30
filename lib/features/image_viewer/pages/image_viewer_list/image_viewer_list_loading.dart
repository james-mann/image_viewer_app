part of 'image_viewer_list_page.dart';

class _ImageViewerListLoading extends StatelessWidget {
  const _ImageViewerListLoading();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(
        Dimens.space16,
        Dimens.space16,
        Dimens.space16,
        Dimens.space50,
      ),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: Dimens.space8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.space8),
          ),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ImageViewerShimmer.rectangular(
                  width: Dimens.imageListSize,
                  height: Dimens.imageListSize,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(Dimens.space16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageViewerShimmer.rectangular(
                          width: Dimens.space150,
                          height: Dimens.space30,
                        ),
                        SpacerV(value: Dimens.space4),
                        ImageViewerShimmer.rectangular(
                          width: Dimens.space100,
                          height: Dimens.space24,
                        ),
                        const SpacerV(),
                        Wrap(
                          runSpacing: Dimens.space2,
                          spacing: Dimens.space4,
                          children: List.generate(
                            2,
                            (index) => ImageViewerShimmer.rectangular(
                              width: Dimens.space50,
                              height: Dimens.space24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
