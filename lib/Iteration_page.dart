import 'package:flutter/material.dart';

class IterationFinder extends StatefulWidget {
  const IterationFinder({super.key});

  @override
  _IterationFinderState createState() => _IterationFinderState();
}

class _IterationFinderState extends State<IterationFinder> {
  final TextEditingController nController = TextEditingController();
  final TextEditingController qController = TextEditingController();
  final TextEditingController lController = TextEditingController();

  int iterations = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: nController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Enter N :'),
          ),
          TextField(
            controller: qController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Enter q :'),
          ),
          TextField(
            controller: lController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Enter L :'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: calculateIterations,
            child: const Text('Calculate Iterations'),
          ),
          const SizedBox(height: 10),
          Text('Iterations: $iterations'),
        ],
      ),
    );
  }

  void calculateIterations() {
    int N = int.tryParse(nController.text) ?? 0;
    int q = int.tryParse(qController.text) ?? 0;
    double L = double.tryParse(lController.text) ?? 0;

    if (N <= 0 || q <= 0 || L <= 0) {
      // Handling invalid input & return
      return;
    }

    double currentN = N.toDouble(); // Use double for precise division
    int currentIterations = 0;

    print('Starting calculation: N=$N, q=$q, L=$L');

    while (currentN / q < L || currentN / q == L) {
      print('Iteration $currentIterations: N=$currentN');
      currentN = currentN / q;
      currentIterations++;
    }

    print('Final result after $currentIterations iterations: N=$currentN');

    setState(() {
      iterations = currentIterations;
    });
  }
}
