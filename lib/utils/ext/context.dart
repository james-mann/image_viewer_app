import 'package:flutter/material.dart';
import 'package:image_viewer/core/core.dart';

extension ContextExtensions on BuildContext {
  double widthInPercent(double percent) {
    final toDouble = percent / 100;

    return MediaQuery.of(this).size.width * toDouble;
  }

  double heightInPercent(double percent) {
    final toDouble = percent / 100;

    return MediaQuery.of(this).size.height * toDouble;
  }

  // Handle dialog
  Future<void> dialog({required List<Widget> children, String? title}) =>
      showDialog(
        context: this,
        barrierDismissible: true,
        builder: (c) => WillPopScope(
          onWillPop: () async => false,
          child: Material(
            color: Colors.transparent,
            child: Center(
              child: Container(
                decoration: BoxDecorations(c).dialogAlt,
                margin: EdgeInsets.symmetric(horizontal: Dimens.space16),
                child: Wrap(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(Dimens.space16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title ?? "",
                            style: Theme.of(this).textTheme.titleLarge,
                          ),
                          IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () {
                              Navigator.pop(c);
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: Dimens.space24,
                        left: Dimens.space16,
                        right: Dimens.space16,
                      ),
                      child: Wrap(
                        children: [for (final child in children) child],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  //Start Loading Dialog
  static late BuildContext ctx;

  Future<void> show() => showDialog(
        context: this,
        barrierDismissible: false,
        builder: (c) {
          ctx = c;

          return WillPopScope(
            onWillPop: () async => false,
            child: Material(
              color: Colors.transparent,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(this).extension<ImageViewerColors>()!.background,
                    borderRadius: BorderRadius.circular(Dimens.cornerRadius),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: Dimens.space30),
                  padding: EdgeInsets.all(Dimens.space24),
                  child: const Loading(),
                ),
              ),
            ),
          );
        },
      );

  void dismiss() {
    try {
      Navigator.pop(ctx);
    } catch (_) {}
  }

//End Loading Dialog
}
