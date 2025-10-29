import 'package:flutter/material.dart';

class KaphaDetailScreen extends StatelessWidget {
  const KaphaDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kapha Dosha'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Kapha — Earth & Water',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'Kapha represents the elements of earth and water — it governs structure, stability, and compassion. '
                  'When balanced, Kapha types are calm, nurturing, and loyal. They provide strength and endurance. '
                  '\n\nWhen imbalanced, Kapha can cause lethargy, weight gain, congestion, and emotional heaviness. '
                  'Balancing Kapha requires stimulation, movement, and lighter foods.'
                  '\n\nTips for Balancing Kapha:\n'
                  '• Favor light, warm, and spicy foods.\n'
                  '• Exercise daily and stay active.\n'
                  '• Avoid overeating and excessive sleep.\n'
                  '• Keep your mind engaged with new challenges.\n'
                  '• Stay positive and expressive.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
