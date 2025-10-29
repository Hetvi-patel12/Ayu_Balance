import 'package:flutter/material.dart';
import '../models/dosha_model.dart';
import 'dosha_detail_screen.dart';
import 'home_screen.dart';
import 'food_guide_screen.dart'; // 👈 Add this import

class QuizResultScreen extends StatelessWidget {
  final Dosha dosha;

  const QuizResultScreen({super.key, required this.dosha});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Dominant Dosha'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'You are primarily ${dosha.name}!',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                dosha.imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              dosha.description,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const Spacer(),

            // 👇 New button to open food guide
            ElevatedButton.icon(
              icon: const Icon(Icons.restaurant_menu),
              label: const Text('View Food Guide'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => FoodGuideScreen(
                      doshaType: dosha.id, // Pass dosha ID like 'vata'
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 10),

            ElevatedButton.icon(
              icon: const Icon(Icons.info),
              label: const Text('Learn More'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DoshaDetailScreen(dosha: dosha),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),

            TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const HomeScreen()),
                      (route) => false,
                );
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
