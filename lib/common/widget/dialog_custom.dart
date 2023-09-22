import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/common/constant/colors.dart';
import 'package:news_app_clean_architecture/common/widget/button/animation_click.dart';

class DialogCustom extends StatelessWidget {
  const DialogCustom(
      {Key? key,
      required this.childInside,
      required this.childShowDialog,
      this.barrierDismissible = true})
      : super(key: key);
  final Widget childShowDialog;
  final Widget childInside;
  final bool barrierDismissible;
  @override
  Widget build(BuildContext context) {
    return AnimationClick(
      function: () {
        showDialog<dynamic>(
          context: context,
          barrierDismissible: barrierDismissible,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              backgroundColor: grey100,
              child: Container(
                padding: const EdgeInsets.all(32),
                child: childInside,
              ),
            );
          },
        );
      },
      child: childShowDialog,
    );
  }
}
