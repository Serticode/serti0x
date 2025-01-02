import 'package:flutter/material.dart';

class CustomSlantedCard extends StatelessWidget {
  const CustomSlantedCard({
    super.key,
    this.width = 250,
    this.rightHeight = 240,
    this.leftHeight = 130,
    this.cornerRadius = 16,
    this.backgroundColor = Colors.black,
    this.margin = const EdgeInsets.all(16.0),
    this.child,
  });

  final double width;
  final double rightHeight;
  final double leftHeight;
  final double cornerRadius;
  final Color backgroundColor;
  final EdgeInsets margin;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ClipPath(
        clipper: CustomCardClipper(
          leftHeight: leftHeight,
          rightHeight: rightHeight,
          cornerRadius: cornerRadius,
        ),
        child: Container(
          width: width,
          height: rightHeight,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
          child: child ?? const SizedBox.shrink(),
        ),
      ),
    );
  }
}

class CustomCardClipper extends CustomClipper<Path> {
  const CustomCardClipper({
    required this.leftHeight,
    required this.rightHeight,
    required this.cornerRadius,
  });
  final double leftHeight;
  final double rightHeight;
  final double cornerRadius;

  @override
  Path getClip(Size size) {
    final path = Path();

    ///
    /// There are four points for starters
    /// Point 1 is (0,0) starting point

    /// Point 2 move from the starting point of (tight height - left height), to  the length of right height
    path.lineTo(rightHeight - leftHeight, rightHeight);

    /// point 3 move width and right height
    path.lineTo(250, rightHeight);

    /// point four - move from width to 0
    path.lineTo(250, 0);

    /* 

    path.lineTo(250, rightHeight);

    path.lineTo(250, leftHeight); */

    /* ///! Start from top-left corner
    path.moveTo(0, cornerRadius);

    ///! Top-left corner
    path.quadraticBezierTo(0, 0, cornerRadius, 0);

    ///! Top edge
    path.lineTo(size.width - cornerRadius, 0);

    ///! Top-right corner
    path.quadraticBezierTo(size.width, 0, size.width, cornerRadius);

    ///! Right edge
    path.lineTo(size.width, rightHeight - cornerRadius);

    ///! Bottom-right corner
    path.quadraticBezierTo(
      size.width,
      rightHeight,
      size.width - cornerRadius,
      rightHeight,
    );

    ///! Bottom edge
    path.lineTo(cornerRadius, leftHeight);

    ///! Bottom-left corner
    path.quadraticBezierTo(0, leftHeight, 0, (leftHeight) - cornerRadius); */

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomCardClipper oldClipper) =>
      oldClipper.leftHeight != leftHeight ||
      oldClipper.rightHeight != rightHeight ||
      oldClipper.cornerRadius != cornerRadius;
}
