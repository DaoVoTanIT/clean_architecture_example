import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/common/constant/colors.dart';
import 'package:news_app_clean_architecture/common/constant/styles.dart';

class SliderView extends StatefulWidget {
  SliderView(
      {Key? key,
      this.onChangedistValue,
      this.distValue = 0.0,
      required this.max,
      required this.divisions,
      required this.title})
      : super(key: key);

  final Function(double)? onChangedistValue;
  double distValue;
  final double max;
  final String title;
  final int divisions;
  @override
  SliderViewState createState() => SliderViewState();
}

class SliderViewState extends State<SliderView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: widget.distValue.round(),
              child: const SizedBox(),
            ),
            SizedBox(
              width: 50,
              child: Text(
                '${(widget.distValue / 10).round()}${widget.title}',
                style: h7(context: context, fontWeight: '700'),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: widget.max.toInt() - widget.distValue.round(),
              child: const SizedBox(),
            ),
          ],
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbShape: CustomThumbShape(),
          ),
          child: Slider(
            onChanged: (double value) {
              if (widget.onChangedistValue != null) {
                setState(() {
                  widget.distValue = value;
                });
                try {
                  widget.onChangedistValue!(widget.distValue);
                } catch (_) {}
              }
            },
            min: 0,
            max: widget.max,
            activeColor: blueCrayola,
            inactiveColor: Colors.grey.withOpacity(0.4),
            divisions: widget.divisions,
            value: widget.distValue,
            //label: '${(distValue / 10).round()}%',
          ),
        ),
      ],
    );
  }
}

class CustomThumbShape extends SliderComponentShape {
  static const double _thumbSize = 3.0;
  static const double _disabledThumbSize = 3.0;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size.fromRadius(0);
  }

  static final Animatable<double> sizeTween = Tween<double>(
    begin: _disabledThumbSize,
    end: _thumbSize,
  );

  @override
  void paint(
    PaintingContext context,
    Offset thumbCenter, {
    Animation<double>? activationAnimation,
    Animation<double>? enableAnimation,
    bool? isDiscrete,
    TextPainter? labelPainter,
    RenderBox? parentBox,
    Size? sizeWithOverflow,
    SliderThemeData? sliderTheme,
    TextDirection textDirection = TextDirection.ltr,
    double? textScaleFactor,
    double? value,
  }) {
    final Canvas canvas = context.canvas;
    final ColorTween colorTween = ColorTween(
      begin: sliderTheme?.disabledThumbColor,
      end: sliderTheme?.thumbColor,
    );
    canvas.drawPath(
        Path()
          ..addOval(Rect.fromPoints(
              Offset(thumbCenter.dx + 12, thumbCenter.dy + 12),
              Offset(thumbCenter.dx - 12, thumbCenter.dy - 12)))
          ..fillType = PathFillType.evenOdd,
        Paint()
          ..color = Colors.black.withOpacity(0.5)
          ..maskFilter =
              MaskFilter.blur(BlurStyle.normal, convertRadiusToSigma(8)));

    final Paint cPaint = Paint();
    cPaint.color = Colors.white;
    cPaint.strokeWidth = 14 / 2;
    canvas.drawCircle(Offset(thumbCenter.dx, thumbCenter.dy), 12, cPaint);
    cPaint.color = colorTween.evaluate(enableAnimation!)!;
    canvas.drawCircle(Offset(thumbCenter.dx, thumbCenter.dy), 10, cPaint);
  }

  double convertRadiusToSigma(double radius) {
    return radius * 0.57735 + 0.5;
  }
}
