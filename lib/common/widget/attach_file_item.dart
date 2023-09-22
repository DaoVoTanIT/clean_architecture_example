import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/common/constant/colors.dart';
import 'package:news_app_clean_architecture/common/constant/styles.dart';
import 'package:news_app_clean_architecture/common/model/attachment_model.dart';
import 'package:news_app_clean_architecture/common/widget/image.dart';

class AttachFileItem extends StatelessWidget {
  const AttachFileItem(
      {Key? key, required this.attachFile, this.height, this.width})
      : super(key: key);
  final AttachmentModel attachFile;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageAsset(
          attachFile.image,
          width: width ?? 100,
          height: height ?? 72,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                attachFile.description,
                style: h6(context: context),
              ),
              Text(
                "${'uploaded'.tr()} ${DateFormat('MMM d, yyyy').format(attachFile.time ?? DateTime.now())}",
                style: h6(color: grayBlue),
              ),
            ],
          ),
        )
      ],
    );
  }
}
