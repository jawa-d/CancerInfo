import 'package:flutter/material.dart';

class PatientInfoScreen extends StatefulWidget {
  const PatientInfoScreen({Key? key}) : super(key: key);

  @override
  _PatientInfoScreenState createState() => _PatientInfoScreenState();
}

class _PatientInfoScreenState extends State<PatientInfoScreen> {
  final List<Map<String, dynamic>> patients = [];
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  void addPatient(String name, String age) {
    setState(() {
      patients.add({'name': name, 'age': age});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إضافة مرضى'),
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
                    labelText: 'اسم المريض',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: ageController,
                  decoration: const InputDecoration(
                    labelText: 'عمر المريض',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (nameController.text.isNotEmpty && ageController.text.isNotEmpty) {
                      addPatient(nameController.text, ageController.text);
                    }
                  },
                  child: const Text('إضافة مريض'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: patients.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(patients[index]['name']),
                  subtitle: Text('العمر: ${patients[index]['age']}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
