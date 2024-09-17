import 'package:flutter/material.dart';

class DoctorInfoScreen extends StatefulWidget {
  const DoctorInfoScreen({Key? key}) : super(key: key);

  @override
  _DoctorInfoScreenState createState() => _DoctorInfoScreenState();
}

class _DoctorInfoScreenState extends State<DoctorInfoScreen> {
  final List<Map<String, dynamic>> doctors = [];
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  void addDoctor(String name, String age) {
    setState(() {
      doctors.add({'name': name, 'age': age});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إدارة الأطباء'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'اسم الطبيب',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: ageController,
                  decoration: const InputDecoration(
                    labelText: 'عمر الطبيب',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (nameController.text.isNotEmpty && ageController.text.isNotEmpty) {
                      addDoctor(nameController.text, ageController.text);
                    }
                  },
                  child: const Text('إضافة طبيب'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: doctors.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/doctor_avatar.png'), // صورة الطبيب
                    ),
                    title: Text(doctors[index]['name']),
                    subtitle: Text('العمر: ${doctors[index]['age']}'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
