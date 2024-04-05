import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => (runApp(const MyApp()));


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = 'i JTracker';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.question_mark),
              Text(title),
              Row(
                children: [
                  Icon(Icons.notifications),
                  Icon(Icons.settings),
                ],
              )
            ],
          ),
          backgroundColor: Colors.blue,
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageSection(),
            OnlineSection(),
            RowSection(),
            RowSection(),
            RowSection(),
            RowSection(),
            RowSection(),
          ],
        ),
      ),
    );
  }
}

class BoxSection extends StatelessWidget {
  const BoxSection({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(icon), Text(text)],
      ),
    );
  }
}

class RowSection extends StatelessWidget {
  const RowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BoxSection(text: 'map', icon: Icons.map),
        BoxSection(text: 'live location', icon: Icons.location_city),
        BoxSection(text: 'map', icon: Icons.map),
      ],
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 20,
            height: 20,
            margin: const EdgeInsets.only(left: 10),
            child: Image.asset(
              'assets/EDVAC.jpeg',
            ),
          ),
          const Column(
            children: [
              Text('robert steven'),
              SizedBox(
                width: 20,
              ),
              Row(
                children: [Icon(Icons.car_crash), Text(' 54681644664846456')],
              ),
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          const Text('logout')
        ],
      ),
    );
  }
}

class OnlineSection extends StatelessWidget {
  const OnlineSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(' online | battery 90%');
  }
}
