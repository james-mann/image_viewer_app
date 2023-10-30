import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_viewer/core/core.dart';
import 'package:image_viewer/features/features.dart';
import 'package:image_viewer/utils/utils.dart';

part 'image_viewer_appbar.dart';
part 'image_viewer_list_empty.dart';
part 'image_viewer_list_loading.dart';
part 'image_viewer_list_success.dart';

class ImageViewerListPage extends StatelessWidget {
  const ImageViewerListPage({super.key});

  @override
  Widget build(BuildContext context) {
    String query = "";
    return Parent(
      appBar: _ImageViewerAppbar(
        onChanged: (value) {
          query = value;
          context
              .read<ImageViewerCubit>()
              .imageViewer(ImageViewerParams(q: query));
        },
      ),
      child: RefreshIndicator(
        color: Theme.of(context).extension<ImageViewerColors>()!.pink,
        backgroundColor:
            Theme.of(context).extension<ImageViewerColors>()!.background,
        onRefresh: () {
          return context
              .read<ImageViewerCubit>()
              .imageViewer(ImageViewerParams(q: query));
        },
        child: Center(
          child: BlocBuilder<ImageViewerCubit, ImageViewerState>(
            builder: (_, state) => state.when(
              loading: () => const _ImageViewerListLoading(),
              success: (data) => _ImageViewerListSuccess(data: data),
              failure: (message) => Text(message),
              empty: () => _ImageViewerListEmpty(query: query),
            ),
          ),
        ),
      ),
    );
  }
}
