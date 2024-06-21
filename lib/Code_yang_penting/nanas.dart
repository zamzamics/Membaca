import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:membaca/Code_yang_penting/subnanas.dart';

class Nanas extends StatelessWidget {
  Nanas({super.key});

  final FlutterTts flutterTts = FlutterTts();

  Future<void> _speak(String text) async {
    //id-ID
    //ja-JP
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
            colors: [Colors.orange, Colors.yellow],
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
                      children: ['NA', 'NE', 'NO', 'NU', 'NI'].map((text) {
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
                      children: ['NANA', 'NANO', 'MANA'].map((text) {
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
                      children: ['NINI', 'NANI', 'NAGA'].map((text) {
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
                      children: ['NUNU', 'NUNA', 'NAMA'].map((text) {
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
                      children: ['NENE', 'NUNI', 'NODA  '].map((text) {
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
                      children: ['NONO', 'NENI', 'KINO'].map((text) {
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
                    Transform.rotate(
                      angle: 20 *
                          3.141592653589793 /
                          180, // Mengubah derajat ke radian
                      child: Image.asset(
                        'assets/img/nanas.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await _speak("nanas"); // Pastikan suara selesai diputar
                        Navigator.push(
                          // Kemudian navigasi ke halaman baru
                          context,
                          MaterialPageRoute(builder: (context) => SubNanas()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(
                          horizontal: buttonPaddingHorizontal,
                          vertical: buttonPaddingVertical,
                        ),
                        textStyle: TextStyle(
                          fontSize: fontSize,
                        ),
                      ),
                      child: const Text('NANAS'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
