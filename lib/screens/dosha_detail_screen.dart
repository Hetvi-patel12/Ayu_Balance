import 'package:flutter/material.dart';
import '../models/dosha_model.dart';

class DoshaDetailScreen extends StatelessWidget {
  final Dosha dosha;

  const DoshaDetailScreen({super.key, required this.dosha});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dosha.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Image.network(
                dosha.imageUrl,
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),

            // Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                dosha.description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 24),

            // Characteristics
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Characteristics',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            ...dosha.characteristics.map((c) => ListTile(
              leading: const Icon(Icons.star, color: Colors.amber),
              title: Text(c),
            )),

            const SizedBox(height: 20),

            // Balance Tips
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Balance Tips',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            ...dosha.balanceTips.map((t) => ListTile(
              leading: const Icon(Icons.spa, color: Colors.green),
              title: Text(t),
            )),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
