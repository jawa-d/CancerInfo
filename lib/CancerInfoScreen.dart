import 'package:flutter/material.dart';
import 'package:todo/patient_info_screen.dart';


class CancerInfoScreen extends StatelessWidget {
  const CancerInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('معلومات عن السرطان'),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.pink[100],
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset('assets/images/cancer_info.png', height: 150),
                const Text(
                  'ما هو السرطان؟',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'السرطان هو مجموعة من الأمراض التي تتميز بالنمو غير الطبيعي للخلايا.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 30),
                const Text(
                  'أنواع السرطان',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'هناك العديد من أنواع السرطان مثل سرطان الثدي، القولون، والرئة.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PatientInfoScreen()),
              );
            },
            child: const Text('التالي'),
          ),
        ],
      ),
    );
  }
}
