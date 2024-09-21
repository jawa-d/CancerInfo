import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // استيراد المكتبة

class LoginPage2 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) 
  
  {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Placeholder for the illustration
              SizedBox(height:50 ,),
              Container(
                height: 150,
                child: SvgPicture.asset(
                  'images/undraw_login_re_4vu2.svg', // وضع الصورة SVG هنا
                  fit: BoxFit.contain,
                ),
              ),
              // Title text
              const Text(
                'EDUCATION IS FREE',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color:Color(0xff3F3D56),
                ),
                textAlign: TextAlign.center,
              ),
              // Subtitle text
              Text(
                'Online education has never been this easy. Get your Account now and let\'s get started already.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
              // Container for buttons
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff135A7B),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(150),
                    topRight: Radius.circular(150),
                    
                  ),
                ),
                padding: EdgeInsets.only(bottom: 20), // إضافة مساحة أسفل الزر
                child: Column(
                  children: [
                    SizedBox(height: 70),
                    ElevatedButton(
                      onPressed: () {
                        // تنفيذ ما يحدث عند الضغط على زر Sign Up
                      },
                      child: Text('SIGN UP',
                         style: TextStyle(
                         color: Colors.black,
                      ),
                      ),
                      style: ElevatedButton.styleFrom(
                        
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15), // تعديل زوايا الزر
                        ),
                        minimumSize: Size(200, 50),
                        // تحديد الحجم الأدنى للزر
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('OR', style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // تنفيذ ما يحدث عند الضغط على زر Log In
                      },
                      child: Text('LOGIN IN',
                      style: TextStyle(
                         color: Colors.black,
                      ),
                      ),
                      style: ElevatedButton.styleFrom(
                        
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15), // تعديل زوايا الزر
                        ),
                        minimumSize: Size(200, 50), // تحديد الحجم الأدنى للزر
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
