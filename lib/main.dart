import 'package:flutter/material.dart';
import 'utils/theme.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const AyurBalanceApp());
}

class AyurBalanceApp extends StatelessWidget {
  const AyurBalanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayur Balance',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}
