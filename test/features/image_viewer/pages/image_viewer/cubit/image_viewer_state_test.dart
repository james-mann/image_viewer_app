import 'package:flutter_test/flutter_test.dart';
import 'package:image_viewer/features/features.dart';

void main() {
  group('UsersStatusX', () {
    test('returns correct values for UsersStatus.loading', () {
      const status = ImageViewerState.loading();
      expect(status, const ImageViewerState.loading());
    });

    test('returns correct values for UsersStatus.success', () {
      const status = ImageViewerState.success(ImageViewer(hits: []));
      expect(status, const ImageViewerState.success(ImageViewer(hits: [])));
    });

    test('returns correct values for UsersStatus.failure', () {
      const status = ImageViewerState.failure("");
      expect(status, const ImageViewerState.failure(""));
    });
    test('returns correct values for UsersStatus.empty', () {
      const status = ImageViewerState.empty();
      expect(status, const ImageViewerState.empty());
    });
  });
}
