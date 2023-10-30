import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_viewer/core/core.dart';
import 'package:image_viewer/utils/utils.dart';

///*********************************************
/// Created by ukietux on 19/06/20 with ♥
/// (>’_’)> email : ukie.tux@gmail.com
/// github : https://www.github.com/ImageViewer <(’_’<)
///*********************************************
/// © 2020 | All Right Reserved
class CustomDialog extends StatefulWidget {
  final Widget content;
  final bool? showClose;
  final double? width;
  final double? height;
  final Function? onBackPressed;
  final String title;

  const CustomDialog({
    super.key,
    required this.content,
    this.showClose,
    this.width,
    this.height,
    this.onBackPressed,
    required this.title,
  });

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  final radius = 5.0;

  @override
  Widget build(BuildContext context) {
    return CupertinoDialogAction(
      //this right here
      textStyle: Theme.of(context).textTheme.bodyMedium,
      isDestructiveAction: true,
      isDefaultAction: true,
      child: SizedBox(
        width: widget.width ?? context.widthInPercent(90),
        child: Column(
          children: [
            Row(
              children: [
                Center(
                  child: Text(
                    widget.title,
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  right: Dimens.space16,
                  child: SizedBox(
                    width: Dimens.space24,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.transparent,
                      ),
                      onPressed: widget.onBackPressed as void Function()? ??
                          () {
                            Navigator.pop(context);
                          },
                      child: const Icon(Icons.close),
                    ),
                  ),
                ),
              ],
            ),
            Material(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(radius),
                bottomRight: Radius.circular(radius),
              ),
              child: widget.content,
            ),
          ],
        ),
      ),
    );
  }
}
