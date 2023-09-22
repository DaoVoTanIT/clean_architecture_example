import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/common/constant/export.dart';

class CircularProgressIndicatorWidget extends StatefulWidget {
  const CircularProgressIndicatorWidget(
      {Key? key,
      this.total = 0,
      this.current = 0,
      required this.title,
      required this.title2})
      : super(key: key);
  final int total;
  final int current;
  final String title;
  final String title2;

  @override
  State<CircularProgressIndicatorWidget> createState() =>
      _CircularProgressIndicatorWidgetState();
}

class _CircularProgressIndicatorWidgetState
    extends State<CircularProgressIndicatorWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.title.isEmpty
                ? Text(
                    widget.title2,
                    style: h7(context: context),
                  )
                : RichText(
                    text: TextSpan(
                      text: '${widget.title} ',
                      style: h1(context: context, fontWeight: '700'),
                      children: <TextSpan>[],
                    ),
                  ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: '${widget.current}',
                    style: h6(context: context, color: grayBlue),
                  ),
                  TextSpan(
                    text: '/',
                    style: h6(context: context, color: grayBlue),
                  ),
                  TextSpan(
                    text: '${widget.total} ',
                    style: h6(context: context, color: grayBlue),
                  ),
                  TextSpan(
                    text: widget.title2,
                    style: h6(context: context, color: grayBlue),
                  )
                ],
              ),
            ),
          ],
        ),
        Stack(alignment: Alignment.center, children: [
          Container(
            padding: const EdgeInsets.all(12),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: grey100,
            ),
            child: TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0.0, end: 0.80),
              duration: const Duration(milliseconds: 1000),
              builder: (context, value, _) => CircularProgressIndicator(
                  strokeWidth: 5,
                  value:
                      widget.total == 0 ? 0 : (widget.current) / widget.total,
                  semanticsLabel: 'Linear progress indicator',
                  backgroundColor: isabelline,
                  color: greenDeep),
            ),
          ),
          Text('${widget.current}',
              style: h0(color: greenDeep, hasUnderLine: true))
        ]),
      ],
    );
  }
}
