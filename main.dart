import 'package:flutter/material.dart';

void main() {
  runApp(const PeugotGuideApp());
}

class PeugotGuideApp extends StatelessWidget {
  const PeugotGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'دليل ميكانيك بيجو 103',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.grey[100],
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
        title: const Text('دليل صيانة بيجو 103 و 110'),
        backgroundColor: Colors.orange[800],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildCategoryCard(context, 'بيجو 103', Icons.motorcycle, Colors.orange),
            _buildCategoryCard(context, 'بيجو 110', Icons.two_wheeler, Colors.deepOrange),
            _buildCategoryCard(context, 'تشخيص الأعطال', Icons.build, Colors.blue),
            _buildCategoryCard(context, 'حاسبة الخلط (بنزين/زيت)', Icons.calculate, Colors.green),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context, String title, IconData icon, Color color) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () {
          // هنا نقدر نبرمج الانتقال للصفحة الخاصة بالقسم
        },
        borderRadius: BorderRadius.circular(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: color),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
