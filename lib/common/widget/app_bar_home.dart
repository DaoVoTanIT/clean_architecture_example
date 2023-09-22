import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/common/constant/images.dart';
import 'package:news_app_clean_architecture/common/constant/images.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome(
      {Key? key,
      this.size,
      this.child,
      this.center,
      this.right,
      this.color = Colors.transparent,
      this.bottom,
      this.iconLeft = icBack,
      this.left})
      : super(key: key);
  final Size? size;
  final Widget? child;
  final String iconLeft;
  final Widget? center;
  final Widget? right;
  final Color color;
  final Widget? bottom;
  final Widget? left;

  @override
  Size get preferredSize => size ?? const Size.fromHeight(kToolbarHeight + 240);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(color: color),
            child: bottom ?? const SizedBox(),
          )
        ],
      ),
    );
  }
}
