import 'package:flutter/material.dart';

class VataDetailScreen extends StatelessWidget {
  const VataDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vata Dosha'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Vata — Air & Space',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'Vata represents the elements of air and space — it governs movement, communication, and creativity. '
                  'When balanced, Vata types are energetic, enthusiastic, and imaginative. They adapt easily and are quick learners. '
                  '\n\nWhen imbalanced, Vata can cause anxiety, dry skin, insomnia, and irregular digestion. '
                  'Balancing Vata requires warmth, grounding foods, stable routines, and adequate rest.'
                  '\n\nTips for Balancing Vata:\n'
                  '• Eat warm, moist, and grounding foods like soups, stews, and cooked grains.\n'
                  '• Maintain a consistent daily routine.\n'
                  '• Stay warm and hydrated.\n'
                  '• Practice gentle yoga and meditation.\n'
                  '• Avoid overstimulation and excessive travel.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
