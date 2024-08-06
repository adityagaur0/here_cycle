import 'dart:js' as js;
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  js.context.callMethod('addWatsonScript');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Watson Chat Integration.'),
        ),
        body: const Center(
          child: Text('Integrating Watson Assistant'),
        ),
      ),
    );
  }
}
