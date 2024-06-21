import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'subbaju.dart';

class Baju extends StatelessWidget {
  Baju({super.key});

  final FlutterTts flutterTts = FlutterTts();

  Future<void> _speak(String text) async {
    //ar
    await flutterTts.setLanguage("id-ID");
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    // Mengatur orientasi layar ke landscape
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    // Mengambil ukuran layar
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Menghitung padding dan ukuran font berdasarkan ukuran layar
    double buttonPaddingHorizontal = screenWidth * 0.02;
    double buttonPaddingVertical = screenHeight * 0.02;
    double fontSize = screenHeight * 0.04;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.blueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Kotak dengan tombol di pojok kanan atas
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // Menggunakan Column untuk vertical layout
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      // Row pertama untuk tombol "NA", "NE", "NO", "NU", "NI"
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: ['BA', 'BE', 'BO', 'BU', 'BI'].map((text) {
                        return Expanded(
                          // Menggunakan Expanded
                          child: Padding(
                            padding: const EdgeInsets.all(
                                4.0), // Mengatur jarak yang sama
                            child: ElevatedButton(
                              onPressed: () {
                                _speak(
                                    text); // Memanggil _speak dengan teks tombol
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  horizontal: buttonPaddingHorizontal,
                                  vertical: buttonPaddingVertical,
                                ),
                                textStyle: TextStyle(
                                  fontSize: fontSize,
                                ),
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5), // Set radius here
                                ),
                              ),
                              child: Text(text),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                        height:
                            10), // Menambahkan SizedBox untuk jarak antar baris
                    Row(
                      // Row kedua untuk tombol "NANA", "NANO", "MANA"
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: ['BU', 'BU', 'BABI'].map((text) {
                        return Expanded(
                          // Menggunakan Expanded
                          child: Padding(
                            padding: const EdgeInsets.all(
                                4.0), // Mengatur jarak yang sama
                            child: ElevatedButton(
                              onPressed: () {
                                _speak(
                                    text); // Memanggil _speak dengan teks tombol
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  horizontal: buttonPaddingHorizontal,
                                  vertical: buttonPaddingVertical,
                                ),
                                textStyle: TextStyle(
                                  fontSize: fontSize,
                                ),
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5), // Set radius here
                                ),
                              ),
                              child: Text(text),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      // Row kedua untuk tombol "NANA", "NANO", "MANA"
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: ['BA', 'BA', 'BABE'].map((text) {
                        return Expanded(
                          // Menggunakan Expanded
                          child: Padding(
                            padding: const EdgeInsets.all(
                                4.0), // Mengatur jarak yang sama
                            child: ElevatedButton(
                              onPressed: () {
                                _speak(
                                    text); // Memanggil _speak dengan teks tombol
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  horizontal: buttonPaddingHorizontal,
                                  vertical: buttonPaddingVertical,
                                ),
                                textStyle: TextStyle(
                                  fontSize: fontSize,
                                ),
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5), // Set radius here
                                ),
                              ),
                              child: Text(text),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      // Row kedua untuk tombol "NANA", "NANO", "MANA"
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: ['BE', 'BE', 'BABU'].map((text) {
                        return Expanded(
                          // Menggunakan Expanded
                          child: Padding(
                            padding: const EdgeInsets.all(
                                4.0), // Mengatur jarak yang sama
                            child: ElevatedButton(
                              onPressed: () {
                                _speak(
                                    text); // Memanggil _speak dengan teks tombol
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  horizontal: buttonPaddingHorizontal,
                                  vertical: buttonPaddingVertical,
                                ),
                                textStyle: TextStyle(
                                  fontSize: fontSize,
                                ),
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5), // Set radius here
                                ),
                              ),
                              child: Text(text),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      // Row kedua untuk tombol "NANA", "NANO", "MANA"
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: ['BO', 'BO', 'BEBI'].map((text) {
                        return Expanded(
                          // Menggunakan Expanded
                          child: Padding(
                            padding: const EdgeInsets.all(
                                4.0), // Mengatur jarak yang sama
                            child: ElevatedButton(
                              onPressed: () {
                                _speak(
                                    text); // Memanggil _speak dengan teks tombol
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  horizontal: buttonPaddingHorizontal,
                                  vertical: buttonPaddingVertical,
                                ),
                                textStyle: TextStyle(
                                  fontSize: fontSize,
                                ),
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5), // Set radius here
                                ),
                              ),
                              child: Text(text),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      // Row kedua untuk tombol "NANA", "NANO", "MANA"
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: ['BI', 'BI', 'BELI'].map((text) {
                        return Expanded(
                          // Menggunakan Expanded
                          child: Padding(
                            padding: const EdgeInsets.all(
                                4.0), // Mengatur jarak yang sama
                            child: ElevatedButton(
                              onPressed: () {
                                _speak(
                                    text); // Memanggil _speak dengan teks tombol
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  horizontal: buttonPaddingHorizontal,
                                  vertical: buttonPaddingVertical,
                                ),
                                textStyle: TextStyle(
                                  fontSize: fontSize,
                                ),
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5), // Set radius here
                                ),
                              ),
                              child: Text(text),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            const VerticalDivider(
              width: 4,
              thickness: 4,
              color: Colors.white,
            ),

            // Gambar di sebelah kanan
            Expanded(
              child: Center(
                child: Stack(
                  alignment:
                      Alignment.center, // Menengahkan tombol di atas gambar
                  children: [
                    Image.asset(
                      'assets/img/baju.png',
                      fit: BoxFit.cover,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await _speak("Baju"); // Pastikan suara selesai diputar
                        Navigator.push(
                          // Kemudian navigasi ke halaman baru
                          context,
                          MaterialPageRoute(builder: (context) => SubBaju()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(
                            horizontal: buttonPaddingHorizontal,
                            vertical: buttonPaddingVertical),
                        textStyle: TextStyle(
                          fontSize: fontSize,
                        ),
                      ),
                      child: const Text('BAJU'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
