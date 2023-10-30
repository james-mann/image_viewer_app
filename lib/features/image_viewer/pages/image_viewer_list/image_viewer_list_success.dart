part of 'image_viewer_list_page.dart';

class _ImageViewerListSuccess extends StatelessWidget {
  const _ImageViewerListSuccess({this.data});

  final ImageViewer? data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(
        Dimens.space16,
        Dimens.space16,
        Dimens.space16,
        Dimens.space50,
      ),
      itemCount: data?.hits.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: Dimens.space8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.space8),
          ),
          child: InkWell(
            onTap: () => context.pushNamed(
              Routes.imageDetail.name,
              extra: data?.hits[index],
            ),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimens.space8),
                      bottomLeft: Radius.circular(Dimens.space8),
                    ),
                    child: Hero(
                      key: Key(data?.hits[index].id.toString() ?? ""),
                      transitionOnUserGestures: true,
                      tag: data?.hits[index].id.toString() ?? "",
                      child: ImageNetwork(
                        imageUrl: data?.hits[index].previewUrl ?? "",
                        width: Dimens.imageListSize,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(Dimens.space16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data?.hits[index].user ?? "",
                            style: Theme.of(context).textTheme.bodyLarge700,
                          ),
                          Text(
                            data?.hits[index].userId.toString() ?? "",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SpacerV(),
                          Wrap(
                            runSpacing: Dimens.space2,
                            spacing: Dimens.space4,
                            children: data?.hits[index].tags
                                    ?.map(
                                      (e) => Chip(
                                        label: Text(
                                          e,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                        padding: EdgeInsets.zero,
                                      ),
                                    )
                                    .toList() ??
                                [],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
