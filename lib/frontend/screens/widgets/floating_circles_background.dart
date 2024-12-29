/* import 'dart:math';
import 'package:flutter/material.dart';
import 'package:serti0x/frontend/shared/app_colours.dart';

class FloatingCirclesBackground extends StatefulWidget {
  const FloatingCirclesBackground({
    required this.width,
    required this.height,
    super.key,
  });
  final double width;
  final double height;

  @override
  State<FloatingCirclesBackground> createState() =>
      _FloatingCirclesBackgroundState();
}

class _FloatingCirclesBackgroundState extends State<FloatingCirclesBackground>
    with TickerProviderStateMixin {
  final List<Circle> circles = [];
  final Random random = Random();
  final List<Color> colours = [
    appColours.blue,
    appColours.grey700,
    appColours.purple,
    appColours.peach,
    appColours.grey50,
    appColours.secondaryBlack,
  ];

  @override
  void initState() {
    super.initState();
    _initializeCircles();
  }

  void _initializeCircles() {
    for (final colour in colours) {
      final circle = Circle(
        color: colour.withOpacity(0.1),
        radius: 50,
        controller: AnimationController(
          duration: const Duration(seconds: 5),
          vsync: this,
        ),
      );

      circle.position = Offset(
        random.nextDouble() * widget.width,
        random.nextDouble() * widget.height,
      );

      _startNewAnimation(circle);
      circles.add(circle);
    }
  }

  void _startNewAnimation(Circle circle) {
    final targetX = random.nextDouble() * (widget.width - circle.radius * 2) +
        circle.radius;
    final targetY = random.nextDouble() * (widget.height - circle.radius * 2) +
        circle.radius;

    circle.animation = Tween<Offset>(
      begin: circle.position,
      end: Offset(targetX, targetY),
    ).animate(
      CurvedAnimation(
        parent: circle.controller,
        curve: Curves.fastOutSlowIn,
      ),
    )..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            circle.position = circle.animation.value;
            circle.controller.reset();
            _startNewAnimation(circle);
          }
        },
      );

    circle.controller.forward();
  }

  @override
  void dispose() {
    for (final circle in circles) {
      circle.controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: CustomPaint(
        painter: CirclesPainter(circles),
        child: AnimatedBuilder(
          animation: Listenable.merge(
            circles.map((c) => c.controller).toList(),
          ),
          builder: (context, _) {
            return CustomPaint(
              painter: CirclesPainter(circles),
            );
          },
        ),
      ),
    );
  }
}

class Circle {
  Circle({
    required this.color,
    required this.radius,
    required this.controller,
  });
  final Color color;
  final double radius;
  final AnimationController controller;
  late Animation<Offset> animation;
  late Offset position;
}

class CirclesPainter extends CustomPainter {
  CirclesPainter(this.circles);
  final List<Circle> circles;

  @override
  void paint(Canvas canvas, Size size) {
    for (final circle in circles) {
      final paint = Paint()
        ..color = circle.color
        ..style = PaintingStyle.fill;

      canvas.drawCircle(
        circle.animation.value,
        circle.radius,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CirclesPainter oldDelegate) => true;
}
 */