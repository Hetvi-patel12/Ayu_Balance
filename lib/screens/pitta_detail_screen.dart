import 'package:flutter/material.dart';

class PittaDetailScreen extends StatelessWidget {
  const PittaDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pitta Dosha'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Pitta — Fire & Water',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'Pitta embodies the elements of fire and water — it governs digestion, metabolism, and transformation. '
                  'When balanced, Pitta types are focused, intelligent, and natural leaders. They have sharp minds and strong willpower. '
                  '\n\nWhen imbalanced, Pitta can lead to anger, irritability, skin rashes, or acidity. '
                  'Balancing Pitta involves cooling activities, calming emotions, and light foods.'
                  '\n\nTips for Balancing Pitta:\n'
                  '• Eat cooling foods like cucumbers, melons, and leafy greens.\n'
                  '• Avoid spicy and oily foods.\n'
                  '• Stay in cool environments and practice relaxation.\n'
                  '• Engage in creative hobbies to release tension.\n'
                  '• Cultivate patience and forgiveness.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
