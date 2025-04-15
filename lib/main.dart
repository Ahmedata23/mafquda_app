import 'package:flutter/material.dart';

void main() {
  runApp(const MafqudaApp());
}

class MafqudaApp extends StatelessWidget {
  const MafqudaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مفقودة',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مفقودة'),
      ),
      body: const Center(
        child: Text(
          'مرحبًا بك في تطبيق مفقودة!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
