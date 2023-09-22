import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/common/constant/export.dart';
import 'package:news_app_clean_architecture/common/widget/image.dart';

class SectionCardProject extends StatelessWidget {
  const SectionCardProject({
    Key? key,
    required this.item,
  }) : super(key: key);
  final Map<dynamic, dynamic> item;

  @override
  Widget build(BuildContext context) {
    final news = item['new'] != null && item['new'] > 150
        ? '150+'
        : item['new'].toString();
    return InkWell(
      onTap: () {
        if (item['path'] != null) {
          Navigator.of(context).pushNamed(item['path']);
        }
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: grey100,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              blurRadius: 16,
              offset: Offset(0, 2),
              color: Color.fromRGBO(167, 115, 102, 0.16),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            item['img'] != null
                ? ImageAsset(item['img'] ?? imgLogo, width: 35, height: 35)
                : Stack(
                    alignment: Alignment.center,
                    children: [
                      ImageAsset(
                        nextConsultForYou,
                        width: 35,
                        height: 35,
                        color: item['index'] == 1
                            ? item['color'] == null
                                ? orange
                                : hexToColor(item['color'])
                            : item['index'] == 2
                                ? item['color'] == null
                                    ? redLight
                                    : hexToColor(item['color'])
                                : item['index'] == 3
                                    ? item['color'] == null
                                        ? blueLight
                                        : hexToColor(item['color'])
                                    : item['color'] == null
                                        ? tiffanyBlue
                                        : hexToColor(item['color']),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        bottom: 0,
                        child: Text(
                          item['amount'].toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Oswald',
                            height: 56 / 48,
                            color: item['index'] == 1
                                ? item['color'] == null
                                    ? orange
                                    : hexToColor(item['color'])
                                : item['index'] == 2
                                    ? item['color'] == null
                                        ? redLight
                                        : hexToColor(item['color'])
                                    : item['index'] == 3
                                        ? item['color'] == null
                                            ? blueLight
                                            : hexToColor(item['color'])
                                        : item['color'] == null
                                            ? tiffanyBlue
                                            : hexToColor(item['color']),
                          ),
                        ),
                      )
                    ],
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(item['name'] ?? 'invalid',
                  textAlign: TextAlign.center, style: h13(context: context)),
            ),
            item['new'] != null
                ? Text('$news ', style: h13(color: grayBlue))
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class SectionCardOT extends StatelessWidget {
  const SectionCardOT({Key? key, required this.item, this.color})
      : super(key: key);
  final Map<dynamic, dynamic> item;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final news = item['new'] != null && item['new'] > 150
        ? '150+'
        : item['new'].toString();
    return InkWell(
      onTap: () {
        if (item['path'] != null) {
          Navigator.of(context).pushNamed(item['path']);
        }
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: grey100,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              blurRadius: 16,
              offset: Offset(0, 2),
              color: Color.fromRGBO(167, 115, 102, 0.16),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            item['img'] != null
                ? ImageAsset(item['img'] ?? imgLogo, width: 56, height: 56)
                : Stack(
                    alignment: Alignment.center,
                    children: [
                      ImageAsset(
                        nextConsultForYou,
                        width: 70,
                        height: 70,
                        color: color ?? tiffanyBlue,
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        bottom: 0,
                        child: Text(
                          item['amount'].toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Oswald',
                            color: color ?? tiffanyBlue,
                          ),
                        ),
                      )
                    ],
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(item['name'] ?? 'invalid',
                  textAlign: TextAlign.center, style: h6(context: context)),
            ),
            item['new'] != null
                ? Text('$news ', style: h6(color: grayBlue))
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
