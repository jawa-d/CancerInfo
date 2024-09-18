import 'package:flutter/material.dart';
import 'package:todo/patient_info_screen.dart';

class CancerInfoScreen extends StatelessWidget {
  const CancerInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cancer Information'),
        centerTitle: true,
        leading: Icon(Icons.info_outline),
      ),
      
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
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
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: "Cancer is a group of diseases characterized by the abnormal growth of cells.\n\n",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    TextSpan(
                      text: "Types of cancer\n\n",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: "There are many types of cancer such as breast, colon, and lung cancer.",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
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
    );
  }
}
