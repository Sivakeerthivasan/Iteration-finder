import 'package:flutter/material.dart';
import 'package:iteration_calculation/Iteration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 145, 161, 234),
          title: const Text('Iteration Finder'),
          centerTitle: true,
        ),
        body: const Center(
          child: IterationFinder(),
        ),
      ),
    );
  }
}
