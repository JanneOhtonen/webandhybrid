import 'package:flutter/material.dart';

import 'textControl.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  static const _words = ['dog', 'cat', 'mafia', 'kuusikolme'];

  var _wordIndex = 0;

  void _changeWord() {
    setState(() {
      _wordIndex = _wordIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ass first'),
        ),
        body: TextControl(_changeWord),
      ),
    );
  }
}
