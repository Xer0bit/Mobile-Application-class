import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Hello World'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            color: Colors.grey[200],
            width: 500,
            height: 700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Text('Container 1'),
            ),
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Text('Container 2'),
            ),
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Text('Container 3'),
            ),
          ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
