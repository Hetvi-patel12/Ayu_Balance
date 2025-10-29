import 'package:flutter/material.dart';
import '../data/dosha_data.dart';
import 'quiz_result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Map<String, dynamic>> _questions = [
    {
      'question': '1. What best describes your body type?',
      'answers': {
        'vata': 'Slim and light build',
        'pitta': 'Medium and muscular build',
        'kapha': 'Heavy and sturdy build',
      },
    },
    {
      'question': '2. How is your appetite?',
      'answers': {
        'vata': 'Irregular — sometimes hungry, sometimes not',
        'pitta': 'Strong and consistent appetite',
        'kapha': 'Slow digestion and mild hunger',
      },
    },
    {
      'question': '3. What best describes your temperament?',
      'answers': {
        'vata': 'Enthusiastic but anxious',
        'pitta': 'Confident and perfectionist',
        'kapha': 'Calm and patient',
      },
    },
    {
      'question': '4. How do you respond to stress?',
      'answers': {
        'vata': 'Overthink and worry easily',
        'pitta': 'Get angry or frustrated quickly',
        'kapha': 'Withdraw or become lazy',
      },
    },
    {
      'question': '5. What climate do you prefer?',
      'answers': {
        'vata': 'Warm and moist weather',
        'pitta': 'Cooler temperatures',
        'kapha': 'Dry and warm climate',
      },
    },
  ];

  int _currentIndex = 0;
  Map<String, int> _score = {'vata': 0, 'pitta': 0, 'kapha': 0};

  void _answerQuestion(String doshaKey) {
    setState(() {
      _score[doshaKey] = _score[doshaKey]! + 1;
      if (_currentIndex < _questions.length - 1) {
        _currentIndex++;
      } else {
        _showResult();
      }
    });
  }

  void _showResult() {
    String resultDosha = _score.entries
        .reduce((a, b) => a.value > b.value ? a : b)
        .key;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => QuizResultScreen(
          dosha: doshaList.firstWhere((d) => d.id == resultDosha),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentQ = _questions[_currentIndex];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dosha Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearProgressIndicator(
              value: (_currentIndex + 1) / _questions.length,
              color: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey.shade300,
            ),
            const SizedBox(height: 20),
            Text(
              currentQ['question'],
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            ...currentQ['answers'].entries.map(
                  (entry) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: ElevatedButton(
                  onPressed: () => _answerQuestion(entry.key),
                  child: Text(entry.value),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
