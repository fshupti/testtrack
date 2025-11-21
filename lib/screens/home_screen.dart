// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../widgets/primary_button.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // later: fetch real points from Firestore
    const int examplePoints = 120;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Track Recycling'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your points',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 4),
            Text(
              '$examplePoints',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            const Text(
              'What would you like to do?',
            ),
            const SizedBox(height: 16),
            widget(
              child: PrimaryButton(
                label: 'Scan item at kiosk',
                onPressed: () {
                  Navigator.pushNamed(context, '/scan');
                },
              ),
            ),
            const SizedBox(height: 12),
            widget(
              child: PrimaryButton(
                label: 'View history (coming soon)',
                onPressed: () {
                  // later: navigate to a history screen
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  widget({required PrimaryButton child}) {}
}
