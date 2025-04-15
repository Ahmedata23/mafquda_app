import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('البحث عن سيارة'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            TextField(
              decoration: InputDecoration(labelText: 'رقم اللوحة'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'رقم الشاسي'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: null, // لاحقاً نضيف البحث
              child: Text('بحث'),
            ),
          ],
        ),
      ),
    );
  }
}
