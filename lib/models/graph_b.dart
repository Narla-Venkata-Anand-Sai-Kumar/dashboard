
import 'package:flutter/material.dart';

class BarGraphPainter extends CustomPainter {
  final List<double> values;
  final List<String> labels;
  final Color barColor = Colors.blue;
  final Color gridColor = Colors.grey.shade300;
  final double barWidth = 50.0;
  final double gridLineWidth = 1.0;
  final double labelFontSize = 13.0;
  final double valueFontSize = 18.0;

  BarGraphPainter(this.values, this.labels);

  @override
  void paint(Canvas canvas, Size size) {
    final barPaint = Paint()..color = barColor;
    final gridPaint = Paint()
      ..color = gridColor
      ..strokeWidth = gridLineWidth;

    double startX = 0.0;
    final barGap =
        (size.width - (barWidth * values.length)) / (values.length + 1);

    // Draw vertical grid lines
    for (int i = 0; i <= values.length; i++) {
      final x = startX + (i * (barWidth + barGap));
      canvas.drawLine(
        Offset(x, 0),
        Offset(x, size.height),
        gridPaint,
      );
    }

    // Draw horizontal grid lines
    for (int i = 0; i <= 10; i++) {
      final y = size.height - ((size.height / 10) * i);
      canvas.drawLine(
        Offset(0, y),
        Offset(size.width, y),
        gridPaint,
      );
    }

    for (int i = 0; i < values.length; i++) {
      final barHeight = (values[i] / (values[1] + values[0] + values[2])) * 200;
      final barRect = Rect.fromLTWH(
        startX + barGap + (i * (barWidth + barGap)),
        size.height - barHeight,
        barWidth,
        barHeight,
      );
      canvas.drawRect(barRect, barPaint);

      final label = labels[i];
      final value = (values[i].toInt()).toString();
      final textSpan = TextSpan(
        text: value,
        style: TextStyle(
            fontSize: valueFontSize,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      );
      final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      final textX = barRect.center.dx - (textPainter.width / 2);
      final textY = barRect.top - (textPainter.height + 4);
      textPainter.paint(canvas, Offset(textX, textY));

      final labelSpan = TextSpan(
        text: label,
        style: TextStyle(fontSize: labelFontSize),
      );
      final labelPainter = TextPainter(
        text: labelSpan,
        textDirection: TextDirection.ltr,
      );
      labelPainter.layout();
      final labelX = barRect.center.dx - (labelPainter.width / 2);
      final labelY = size.height - labelPainter.height;
      labelPainter.paint(canvas, Offset(labelX, labelY));
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
