import 'package:flutter/material.dart';
import 'package:idcard/configs/colors/app_colors.dart';

class CurvedBackground extends StatelessWidget {
  final Widget child;

  const CurvedBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: CustomPaint(
            painter: CurvePainter(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: child,
        ),
      ],
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = AppColors.primary;
    Path path = Path();

    // First Curve (Top Left)
    path.moveTo(0, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.04, size.width * 0.5, size.height * 0.14);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.24, size.width, size.height * 0.14);
    path.lineTo(size.width, 0);
    path.lineTo(0,0);
    path.close();

    canvas.drawPath(path, paint);

    // Second Curve (Bottom Right)
    Paint paint2 = Paint()..color = AppColors.primary;
    Path path2 = Path();

    path2.moveTo(0, size.height);
    path2.quadraticBezierTo(size.width * 0.2, size.height * 0.8, size.width * 0.5, size.height * 0.85);
    path2.quadraticBezierTo(size.width * 0.75, size.height * 0.9, size.width, size.height * 0.75);
    path2.lineTo(size.width, size.height);
    path2.close();

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
