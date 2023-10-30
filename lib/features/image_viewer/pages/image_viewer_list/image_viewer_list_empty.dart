part of 'image_viewer_list_page.dart';

class _ImageViewerListEmpty extends StatelessWidget {
  const _ImageViewerListEmpty({required this.query});

  final String query;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.data_array, size: Dimens.space50),
        SpacerV(value: Dimens.space16),
        Text(
          Strings.of(context)!.dataNotFound(query),
          style: Theme.of(context).textTheme.bodyLarge700,
        ),
      ],
    );
  }
}
