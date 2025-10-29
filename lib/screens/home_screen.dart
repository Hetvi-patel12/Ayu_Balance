import 'package:flutter/material.dart';
import '../data/dosha_data.dart';
import '../screens/quiz_screen.dart';
import '../screens/vata_detail_screen.dart';
import '../screens/pitta_detail_screen.dart';
import '../screens/kapha_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _openDoshaDetail(BuildContext context, String dosha) {
    Widget page;
    switch (dosha) {
      case 'vata':
        page = const VataDetailScreen();
        break;
      case 'pitta':
        page = const PittaDetailScreen();
        break;
      case 'kapha':
        page = const KaphaDetailScreen();
        break;
      default:
        page = const VataDetailScreen();
    }

    Navigator.push(context, MaterialPageRoute(builder: (_) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F9F6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'AyuBalance',
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFFDE7), Color(0xFFE8F5E9)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Center(
              child: Column(
                children: [
                  const Icon(Icons.spa, color: Colors.green, size: 48),
                  const SizedBox(height: 10),
                  Text(
                    'Welcome to Your Wellness Journey',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Discover balance through ancient Ayurvedic wisdom',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.grey[700]),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Dosha Cards
            Expanded(
              child: ListView.builder(
                itemCount: doshaList.length,
                itemBuilder: (context, index) {
                  final dosha = doshaList[index];
                  final colors = _getDoshaColors(dosha.id);
                  final percentage = (index + 1) * 20 + 19; // dummy %

                  return GestureDetector(
                    onTap: () => _openDoshaDetail(context, dosha.id),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: colors['bg'],
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: colors['border']!),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: colors['iconBg'],
                                child: Icon(
                                  _getDoshaIcon(dosha.id),
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                dosha.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: colors['text'],
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                  color: colors['border'],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text(
                                  'Primary',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            dosha.description,
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          const SizedBox(height: 8),
                          LinearProgressIndicator(
                            value: percentage / 100,
                            backgroundColor: colors['border']!.withOpacity(0.3),
                            color: colors['border'],
                            minHeight: 8,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          const SizedBox(height: 4),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '$percentage%',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                icon: const Icon(Icons.quiz),
                label: const Text('Take Dosha Quiz'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const QuizScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Map<String, Color> _getDoshaColors(String dosha) {
    switch (dosha) {
      case 'vata':
        return {
          'bg': const Color(0xFFE3F2FD),
          'border': const Color(0xFF2196F3),
          'iconBg': const Color(0xFF64B5F6),
          'text': const Color(0xFF1565C0),
        };
      case 'pitta':
        return {
          'bg': const Color(0xFFFFF3E0),
          'border': const Color(0xFFFF9800),
          'iconBg': const Color(0xFFFFB74D),
          'text': const Color(0xFFE65100),
        };
      case 'kapha':
        return {
          'bg': const Color(0xFFE8F5E9),
          'border': const Color(0xFF4CAF50),
          'iconBg': const Color(0xFF81C784),
          'text': const Color(0xFF1B5E20),
        };
      default:
        return {
          'bg': Colors.grey.shade200,
          'border': Colors.grey,
          'iconBg': Colors.grey,
          'text': Colors.black,
        };
    }
  }

  IconData _getDoshaIcon(String dosha) {
    switch (dosha) {
      case 'vata':
        return Icons.air;
      case 'pitta':
        return Icons.local_fire_department;
      case 'kapha':
        return Icons.water_drop;
      default:
        return Icons.spa;
    }
  }
}
