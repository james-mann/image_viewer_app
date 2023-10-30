part of 'image_viewer_list_page.dart';

class _ImageViewerAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const _ImageViewerAppbar({required this.onChanged});

  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.pinkMocha,
      title: AnimatedSearchBar(
        label: Constants.get.appName,
        labelStyle: Theme.of(context)
            .textTheme
            .bodyLarge700!
            .copyWith(color: Palette.text),
        searchDecoration: InputDecoration(
          labelText: Strings.of(context)!.searchImage,
          labelStyle: Theme.of(context).textTheme.bodyMedium500,
          alignLabelWithHint: false,
          contentPadding: EdgeInsets.symmetric(horizontal: Dimens.space8),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(Dimens.space16)),
            borderSide: const BorderSide(color: Palette.text),
          ),
        ),
        searchIcon: const Icon(Icons.search, color: Palette.text),
        closeIcon: const Icon(Icons.close, color: Palette.text),
        onChanged: (value) => onChanged(value),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
