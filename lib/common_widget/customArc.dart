import 'package:flutter/widgets.dart';
import 'package:tracker/common/color_extensions.dart';
import 'package:vector_math/vector_math.dart';

class CustomArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2);
    var gradientColor = LinearGradient(
        colors: [TColor.secondary, TColor.secondary50, TColor.secondary0],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter);
    Paint activePaint = Paint()..shader = gradientColor.createShader(rect);

    activePaint.style = PaintingStyle.stroke;
    activePaint.strokeWidth = 15;
    activePaint.strokeCap = StrokeCap.round;

    Paint backgroundPaint = Paint();

    backgroundPaint.color = TColor.gray60.withOpacity(0.5);
    backgroundPaint.style = PaintingStyle.stroke;
    backgroundPaint.strokeWidth = 15;
    backgroundPaint.strokeCap = StrokeCap.round;

    Paint shadowPaint = Paint()..color = TColor.secondary.withOpacity(0.3);

    canvas.drawArc(rect, radians(135), radians(270), false, backgroundPaint);
    canvas.drawArc(rect, radians(135), radians(200), false, activePaint);
  }

  @override
  bool shouldRepaint(CustomArcPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CustomArcPainter oldDelegate) => false;
}
