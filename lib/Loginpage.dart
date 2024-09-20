import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // استيراد المكتبة

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Placeholder for the illustration
                Container(
                  height: 200,
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
                    color: Colors.blue,
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
                // Sign Up and Log In buttons
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // تنفيذ ما يحدث عند الضغط على زر Sign Up
                      },
                      child: Text('SIGN UP'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('OR', style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // تنفيذ ما يحدث عند الضغط على زر Log In
                      },
                      child: Text('LOGIN IN'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
