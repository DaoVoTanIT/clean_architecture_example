import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/common/constant/export.dart';

class PrimaryTabButton extends StatelessWidget {
  final String buttonText;
  final int itemIndex;
  final ValueNotifier<int> notifier;
  final VoidCallback? callback;
  const PrimaryTabButton(
      {Key? key,
      this.callback,
      required this.notifier,
      required this.buttonText,
      required this.itemIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ValueListenableBuilder(
          valueListenable: notifier,
          builder: (BuildContext context, _, __) {
            return ElevatedButton(
                onPressed: () {
                  notifier.value = itemIndex;
                  if (callback != null) {
                    callback!();
                  }
                },
                style: ButtonStyle(
                    backgroundColor: notifier.value == itemIndex
                        ? MaterialStateProperty.all<Color>(
                            HexColor.fromHex('246CFE'))
                        : MaterialStateProperty.all<Color>(
                            HexColor.fromHex('F0F0F0')),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: notifier.value == itemIndex
                                ? BorderSide(color: HexColor.fromHex('246CFE'))
                                : BorderSide(
                                    color: HexColor.fromHex('F0F0F0'))))),
                child: Text(buttonText,
                    style: h5(
                        context: context,
                        color: notifier.value == itemIndex
                            ? Colors.white
                            : Colors.black)));
          }),
    );
  }
}
