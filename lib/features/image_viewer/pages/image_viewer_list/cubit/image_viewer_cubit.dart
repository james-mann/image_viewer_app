import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_viewer/core/core.dart';
import 'package:image_viewer/features/features.dart';

part 'image_viewer_cubit.freezed.dart';
part 'image_viewer_state.dart';

class ImageViewerCubit extends Cubit<ImageViewerState> {
  ImageViewerCubit(this._getImageViewer) : super(const _Loading());

  final GetImageViewer _getImageViewer;

  Future<void> imageViewer(ImageViewerParams params) async {
    emit(const _Loading());
    final data = await _getImageViewer.call(params);

    data.fold(
      (l) {
        if (l is ServerFailure) {
          emit(_Failure(l.message ?? ""));
        }
        if (l is NoDataFailure) {
          emit(const _Empty());
        }
      },
      (r) => emit(_Success(r)),
    );
  }
}
