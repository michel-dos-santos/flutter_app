import 'package:flutter/material.dart';
import 'package:flutter_app/pages/widgets/smooth_page_indicator/painters/indicator_painter.dart';
import 'package:flutter_app/pages/widgets/smooth_page_indicator/painters/swap_painter.dart';
import 'indicator_effect.dart';

class SwapEffect extends IndicatorEffect {
  const SwapEffect({
    Color activeDotColor = Colors.indigo,
    double offset,
    double dotWidth = 16.0,
    double dotHeight = 16.0,
    double spacing = 8.0,
    double radius = 16,
    Color dotColor = Colors.grey,
    double strokeWidth = 1.0,
    PaintingStyle paintStyle = PaintingStyle.fill,
  })  : assert(activeDotColor != null),
        super(
          dotWidth: dotWidth,
          dotHeight: dotHeight,
          spacing: spacing,
          radius: radius,
          strokeWidth: strokeWidth,
          paintStyle: paintStyle,
          dotColor: dotColor,
          activeDotColor: activeDotColor,
        );

  @override
  IndicatorPainter buildPainter(int count, double offset) {
    return SwapPainter(count: count, offset: offset, effect: this);
  }
}
