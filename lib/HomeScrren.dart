import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // استيراد مكتبة flutter_svg
import 'CancerInfoScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cancer Patient Management'),
        centerTitle: true,
        leading: const Icon(Icons.info_outline),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Using SvgPicture.asset to load SVG image
              SvgPicture.asset(
                'images/addProduct.svg', // تأكد من أن المسار صحيح
                width: 200, // عرض الصورة
                height: 200, // ارتفاع الصورة
                fit: BoxFit.contain, // لضبط حجم الصورة داخل الـ Container
              ),
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
                    MaterialPageRoute(
                      builder: (context) => const CancerInfoScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xff263238), // لون الزر
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32, vertical: 16), // حجم الزر
                  textStyle: const TextStyle(
                    fontSize: 18, // حجم الخط
                    fontWeight: FontWeight.bold, // سمك الخط
                  ),
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
