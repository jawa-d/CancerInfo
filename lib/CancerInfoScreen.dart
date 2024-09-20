import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // استيراد مكتبة flutter_svg
import 'package:todo/patient_info_screen.dart';

class CancerInfoScreen extends StatefulWidget {
  const CancerInfoScreen({Key? key}) : super(key: key);

  @override
  _CancerInfoScreenState createState() => _CancerInfoScreenState();
}

class _CancerInfoScreenState extends State<CancerInfoScreen> with SingleTickerProviderStateMixin {
  bool _visible = true;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cancer Information'),
        centerTitle: true,
        leading: const Icon(Icons.info_outline),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0, // تدرج في الظهور
            duration: const Duration(seconds: 1),
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff263238),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: SvgPicture.asset(
                  'images/8412809_3907182.svg', // ضع مسار SVG الخاص بك
                  width: 500,
                  height: 500,
                ),
              ),
            ),
          ),
          const SizedBox(height:10),
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xff263238),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: RichText(
                textAlign: TextAlign.center, // Center the whole text
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "What is cancer?\n\n",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        
                         color: Colors.red,
                      ),
                    ),
                    TextSpan(
                      text: "Cancer is a group of diseases characterized by the abnormal growth of cells.\n\n",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                       color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: "Types of cancer\n\n",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      color: Colors.red,
                      ),
                    ),
                    TextSpan(
                      text: "There are many types of cancer such as breast, colon, and lung cancer.",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                       
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PatientInfoScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color(0xff263238), // Background color
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Smaller padding
                minimumSize: const Size(150, 40), // Fixed size for the button
                textStyle: const TextStyle(
                  fontSize: 16, // Smaller font size
                  fontWeight: FontWeight.bold, // Bold text
                ),
                elevation: 3, // Slightly reduced shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28), // Rounded corners
                ),
              ),
              child: const Text('Next'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible; // عكس حالة الظهور للاختفاء أو الظهور
          });
        },
        child: const Icon(Icons.visibility),
      ),
    );
  }
}
