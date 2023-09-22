import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/common/constant/export.dart';

Future<void> alearDialog(BuildContext context, String content,
    final Function()? function, bool? showButtonClose, bool isSuccess) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Image.asset(
            isSuccess == true ? imgSuccess : imgWarning,
            height: 60,
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          content: Text(
            content.tr(),
            textAlign: TextAlign.center,
            style: h4(context: context, fontWeight: '700'),
          ),
          actions: <Widget>[
            showButtonClose == true
                ? Container()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: grey300),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: TextButton(
                          child: Text(
                            'yes'.tr(),
                            style: h5(
                                context: context,
                                fontWeight: '600',
                                color: redLight),
                          ),
                          onPressed: () {
                            // notificationBloc.add(ReadNotificationEvent(
                            //     1, noti.id.toString()));
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 80,
                        decoration: BoxDecoration(
                          color: tiffanyBlue,
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: TextButton(
                          child: Text(
                            'message.no'.tr(),
                            style: h5(
                                context: context,
                                fontWeight: '600',
                                color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  )
          ],
        );
      });
}

class DialogAction {
  static void showCustomDialog(
      {required BuildContext context, required final Widget childInside}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
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
  }
}
