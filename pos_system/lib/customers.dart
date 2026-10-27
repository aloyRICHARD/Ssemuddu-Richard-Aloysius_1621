import 'package:flutter/material.dart';
import 'data.dart';

class CustomersPage extends StatefulWidget {
  const CustomersPage({super.key});
  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  final nameController = TextEditingController();
  String search = '';
  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Customers')),
      body: Column(children: [
        Padding(padding: const EdgeInsets.all(16), child: TextField(
          decoration: const InputDecoration(labelText: 'Search customers'),
          onChanged: (value) => setState(() => search = value.toLowerCase()),
        )),
        Expanded(child: ListView(children: [
          for (final name in customers)
            if (name.toLowerCase().contains(search))
              ListTile(leading: const CircleAvatar(child: Icon(Icons.person)), title: Text(name)),
        ])),
        Padding(padding: const EdgeInsets.all(16), child: Column(children: [
          TextField(controller: nameController,
            decoration: const InputDecoration(labelText: 'New customer name')),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: () {
            if (nameController.text.trim().isNotEmpty) {
              setState(() => customers.add(nameController.text.trim()));
              nameController.clear();
            }
          }, child: const Text('Add Customer')),
        ])),
      ]),
    );
  }
}
