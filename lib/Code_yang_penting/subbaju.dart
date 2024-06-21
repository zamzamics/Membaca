import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SubBaju extends StatelessWidget {
  SubBaju({super.key});

  final FlutterTts flutterTts = FlutterTts();

  Future<void> _speak(String text) async {
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

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lightBlue,
              Colors.blue,
              Colors.blueAccent,
              Colors.lightBlueAccent
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Kotak dengan tombol di pojok kanan atas
            Expanded(
              child: Stack(
                children: [
                  // Background image
                  Positioned(
                    top: 0,
                    left: 5,
                    child: Transform.rotate(
                      angle: 20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    top: 0,
                    left: 60,
                    child: Transform.rotate(
                      angle: -20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  ////////////////
                  Positioned(
                    top: 0,
                    left: 170,
                    child: Transform.rotate(
                      angle: 20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    top: 0,
                    left: 230,
                    child: Transform.rotate(
                      angle: -20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  //////////

                  Positioned(
                    top: 0,
                    right: 5,
                    child: Transform.rotate(
                      angle: -20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    top: 0,
                    right: 60,
                    child: Transform.rotate(
                      angle: 20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Transform.rotate(
                      angle: 20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    bottom: 0,
                    left: 60,
                    child: Transform.rotate(
                      angle: -20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    bottom: 0,
                    right: 5,
                    child: Transform.rotate(
                      angle: -20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    bottom: 0,
                    right: 60,
                    child: Transform.rotate(
                      angle: 20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  ////////
                  Positioned(
                    bottom: 0,
                    right: 170,
                    child: Transform.rotate(
                      angle: -20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    bottom: 0,
                    right: 230,
                    child: Transform.rotate(
                      angle: 20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  ///////
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      // Menggunakan Column untuk vertical layout
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 60),
                        Row(
                          // Row pertama untuk tombol "BA", "BE", "BO", "BU", "BI"
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
                                    textStyle: const TextStyle(
                                      fontSize: 20,
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
                          // Row kedua untuk tombol "BU", "BU", "BABI"
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
                                    textStyle: const TextStyle(
                                      fontSize: 20,
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
                          // Row ketiga untuk tombol "BA", "BA", "BABE"
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
                                    textStyle: const TextStyle(
                                      fontSize: 20,
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
                          // Row keempat untuk tombol "BE", "BE", "BABU"
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
                                    textStyle: const TextStyle(
                                      fontSize: 20,
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
                          // Row kelima untuk tombol "BO", "BO", "BEBI"
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
                                    textStyle: const TextStyle(
                                      fontSize: 20,
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
                ],
              ),
            ),
            const VerticalDivider(
              width: 4,
              thickness: 4,
              color: Colors.white,
            ),

            // Gambar di sebelah kanan
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 5,
                    child: Transform.rotate(
                      angle: 20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    top: 0,
                    left: 60,
                    child: Transform.rotate(
                      angle: -20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  /////////////
                  Positioned(
                    top: 200,
                    left: 5,
                    child: Transform.rotate(
                      angle: 20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    top: 200,
                    left: 60,
                    child: Transform.rotate(
                      angle: -20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  ////////////
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Transform.rotate(
                      angle: -20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    top: 0,
                    right: 60,
                    child: Transform.rotate(
                      angle: 20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    bottom: 0,
                    left: 5,
                    child: Transform.rotate(
                      angle: 20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    bottom: 0,
                    left: 60,
                    child: Transform.rotate(
                      angle: -20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    bottom: 0,
                    right: 5,
                    child: Transform.rotate(
                      angle: -20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    bottom: 0,
                    right: 60,
                    child: Transform.rotate(
                      angle: 20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  //////////////////
                  Positioned(
                    bottom: 200,
                    right: 5,
                    child: Transform.rotate(
                      angle: -20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  Positioned(
                    bottom: 200,
                    right: 60,
                    child: Transform.rotate(
                      angle: 20 * 3.14159 / 180, // Rotate 60 degrees
                      child: Image.asset('assets/img/baju.png',
                          width: 60, height: 60), // Ukuran kecil
                    ), // Ukuran kecil
                  ),
                  /////////////////
                  Center(
                    child: Column(
                      // Mengubah Stack menjadi Column
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Menengahkan tombol secara vertikal
                      children: [
                        'BABE', 'BABI', 'BOBI', 'BABU', 'BEBI',
                        'BIBU' // Daftar nama tombol
                      ]
                          .map(
                            (text) => Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10, // Jarak antar tombol
                                horizontal: 20, // Jarak horizontal
                              ),
                              child: ButtonTheme(
                                minWidth:
                                    200.0, // Menetapkan lebar minimum untuk semua tombol
                                child: ElevatedButton(
                                  onPressed: () async {
                                    await _speak(
                                        text); // Memanggil _speak dengan teks tombol
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 70,
                                      vertical: buttonPaddingVertical,
                                    ),
                                    textStyle: const TextStyle(
                                      fontSize: 20,
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
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
