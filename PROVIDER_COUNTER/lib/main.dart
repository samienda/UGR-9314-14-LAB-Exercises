import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: const MyApp(),
    ),
  );
}
class Counter extends ChangeNotifier {
  int count = 0;
  void incrementCounter() {
    count++;
    notifyListeners();
  }

  void decrementCounter() {
    count--;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Consumer<Counter>(
                  builder: (context, cart, child) {
                    return Text(
                      ' ${cart.count}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                      ),
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      onPressed: Provider.of<Counter>(context, listen: false)
                          .decrementCounter,
                      child: const Icon(Icons.remove),
                    ),
                    FloatingActionButton(
                      onPressed: Provider.of<Counter>(context, listen: false)
                          .incrementCounter,
                      tooltip: 'Increment',
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ]),
        ));
  }
}
