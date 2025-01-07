import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum CareerPersonalityTraits {
  adaptability,
  problemSolving,
  communication,
  systemDesign,
  codeQuality;
}

class CareerPersonalityTraitsCard extends ConsumerWidget {
  const CareerPersonalityTraitsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}

///////////////////////////////////////
///
class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Bottom shadow card
        Positioned(
          top: 20,
          child: CardLayer(color: Colors.grey[800]!),
        ),
        // Middle shadow card
        Positioned(
          top: 10,
          child: CardLayer(color: Colors.grey[850]!),
        ),
        // Top visible card
        const CardLayer(color: Colors.black),
      ],
    );
  }
}

class CardLayer extends StatelessWidget {
  const CardLayer({required this.color, super.key});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Text(
              'The "Rating" Project',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'A Case Study',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '03',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
