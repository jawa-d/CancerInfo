import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/Loginpage.dart'; // استيراد مكتبة flutter_svg

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // إضافة تدرج لوني في الخلفية
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topLeft, // بدء التدرج من الزاوية العلوية اليسرى
        //     end: Alignment.bottomRight, // انتهاء التدرج في الزاوية السفلية اليمنى
        //     colors: [
        //       Color(0xFFB0BEC5), // لون فاتح في الزاوية العلوية اليسرى
        //       Color(0xFFECEFF1), // لون فاتح آخر في الزاوية السفلية اليمنى
        //     ],
        //   ),
        // ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'images/Home.svg', // ضع مسار SVG الصحيح هنا
                    width: MediaQuery.of(context).size.width * 0.3, // ضبط العرض ليكون مرن ومتناسب مع حجم الشاشة
                    height: MediaQuery.of(context).size.height * 0.4, // ضبط الارتفاع ليكون مرن
                    fit: BoxFit.cover, // لضمان تناسب الصورة
                  ),
                  const SizedBox(height: 10), // مساحة بين الصورة والنص
                  const Text(
                    'CANCER PATIENTS',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3F3D56), // لون النص مشابه للصورة
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 300), // مساحة بين النص والزر
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50), // ضبط الهوامش حول الزر
                    child: ElevatedButton(
                   onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
                      style: ElevatedButton.styleFrom(

                        minimumSize: const Size(200, 50), // عرض 200 وارتفاع 50
                        padding: const EdgeInsets.symmetric(vertical: 16), // تعديل الحشو
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15), // تعديل زوايا الزر
                        ),
                        backgroundColor: const Color(0xff3F3D56), // لون الخلفية
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 18, // حجم الخط
                          color: Colors.white, // لون النص
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
