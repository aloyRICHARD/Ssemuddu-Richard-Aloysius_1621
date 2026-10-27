import 'package:flutter/material.dart';
import 'data.dart';

class BusinessProfilePage extends StatefulWidget {
  const BusinessProfilePage({super.key});
  @override
  State<BusinessProfilePage> createState() => _BusinessProfilePageState();
}

class _BusinessProfilePageState extends State<BusinessProfilePage> {
  final nameController = TextEditingController(text: businessName);
  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Business Profile')),
      body: ListView(padding: const EdgeInsets.all(24), children: [
        const Icon(Icons.store, size: 80, color: Colors.blue),
        const SizedBox(height: 24),
        TextField(controller: nameController,
          decoration: const InputDecoration(labelText: 'Business Name')),
        const SizedBox(height: 24),
        const ListTile(title: Text('Business Type'), subtitle: Text('Retail Store')),
        const SizedBox(height: 24),
        ElevatedButton(onPressed: () {
          if (nameController.text.trim().isNotEmpty) {
            businessName = nameController.text.trim();
            Navigator.pop(context);
          }
        }, child: const Text('Save')),
      ]),
    );
  }
}
