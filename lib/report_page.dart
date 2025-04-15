import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تقديم بلاغ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            TextField(
              decoration: InputDecoration(labelText: 'اسم السيارة'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'موديل السيارة'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'رقم اللوحة'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'رقم الشاسي'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: null, // لاحقاً نضيف الوظيفة
              child: Text('رفع البلاغ'),
            ),
          ],
        ),
      ),
    );
  }
}
