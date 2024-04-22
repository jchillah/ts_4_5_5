import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final double price;

  const DetailScreen({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details zu Hemd"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              "Hemd",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            Text(
              "Ein Hemd, das wirklich gut passt\n$price€",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back), // Specify the icon here
              label: const Text("back"),
            )
          ],
        ),
      ),
    );
  }
}
