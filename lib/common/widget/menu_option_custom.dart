import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_app_clean_architecture/common/constant/colors.dart';
import 'package:news_app_clean_architecture/common/constant/styles.dart';
import 'package:news_app_clean_architecture/common/model/menu_option_model.dart';
import 'package:news_app_clean_architecture/common/widget/button/animation_click.dart';

class MenuOptionCustom extends StatelessWidget {
  const MenuOptionCustom(
      {Key? key,
      required this.childShowOption,
      required this.childInside,
      this.barrierColor})
      : super(key: key);
  final List<MenuOptionModel> childInside;
  final Widget childShowOption;
  final Color? barrierColor;

  @override
  Widget build(BuildContext context) {
    return AnimationClick(
      function: () {
        showCupertinoModalPopup<void>(
          context: context,
          barrierColor: barrierColor ?? black.withOpacity(0.68),
          builder: (BuildContext context) => CupertinoActionSheet(
            actions: childInside.map((MenuOptionModel option) {
              return Container(
                color: grey100,
                child: CupertinoActionSheetAction(
                  child: Text(
                    option.title,
                    style: h5(
                        fontWeight: '600',
                        context: context,
                        color: option.color),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    option.function != null ? option.function!() : null;
                  },
                ),
              );
            }).toList(),
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'cancel'.tr(),
                style: h5(fontWeight: '600', color: grayBlue),
              ),
            ),
          ),
        );
      },
      child: childShowOption,
    );
  }
}
