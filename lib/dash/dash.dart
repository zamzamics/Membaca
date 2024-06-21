import 'package:flutter/material.dart';
import 'package:membaca/Code_yang_penting/baju.dart';
import 'package:membaca/Code_yang_penting/nanas.dart';

class Dash extends StatelessWidget {
  const Dash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Nanas()),
                );
              },
              child: const Text('nanas'),
            ),
            const SizedBox(height: 20), // Menambahkan jarak antara dua tombol
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Baju()),
                );
              },
              child: const Text('baju'),
            ),
          ],
        ),
      ),
    );
  }
}
