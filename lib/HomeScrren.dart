import 'package:flutter/material.dart';
import 'package:todo/CancerInfoScreen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إدارة مرضى السرطان'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/cancer_home.png', height: 200),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'أهلاً بك في تطبيق إدارة مرضى السرطان',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CancerInfoScreen()),
              );
            },
            child: const Text('استمر'),
          ),
        ],
      ),
    );
  }
}
