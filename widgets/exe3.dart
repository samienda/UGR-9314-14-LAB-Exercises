import 'package:flutter/material.dart';

void main() => (runApp(const MyApp()));


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'order details',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('order details'),
        ),
        body: const Column(
          children: [
            CompletedSection(),
          ],
        ),
      ),
    );
  }
}

class CompletedSection extends StatelessWidget {
  const CompletedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Card(
          child: Text('completed'),
        )
      ],
    );
  }
}
