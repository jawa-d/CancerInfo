import 'package:flutter/material.dart';
import 'CancerInfoScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cancer Patient Management'),
        centerTitle: true,
        leading: Icon(Icons.abc_outlined),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Container(
              //   width: 200, // Set a fixed width
              //   height: 200, // Set a fixed height
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       Svg('lib/Images/Illustrations/503.png'), // Path to PNG file
              //       fit: BoxFit.contain, // Scale the image to fit within the container
              //     ),
              //   ),
              // ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Welcome to the Cancer Patient Management App',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
            ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CancerInfoScreen()),
    );
  },
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white, backgroundColor: Colors.blue, // لون النص
    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16), // حجم التباعد الداخلي
    textStyle: const TextStyle(
      fontSize: 18, // حجم الخط
      fontWeight: FontWeight.bold, // سمك الخط
    ),
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.circular(10), // زوايا دائرية للزر
    // ),
    elevation: 5, // ظل الزر
  ),
  child: const Text('Continue'),
),

            ],
          ),
        ),
      ),
    );
  }
}
