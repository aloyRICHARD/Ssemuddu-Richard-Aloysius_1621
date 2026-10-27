import 'package:flutter/material.dart';
import 'data.dart';

class InventoryPage extends StatefulWidget {
  const InventoryPage({super.key});
  @override
  State<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  String search = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inventory')),
      body: Column(children: [
        Padding(padding: const EdgeInsets.all(16), child: TextField(
          decoration: const InputDecoration(labelText: 'Search inventory'),
          onChanged: (value) => setState(() => search = value.toLowerCase()),
        )),
        Expanded(child: ListView(children: [
          for (final product in products)
            if ((product['name'] as String).toLowerCase().contains(search))
              ListTile(leading: const Icon(Icons.inventory_2_outlined),
                title: Text('${product['name']}'),
                subtitle: Text('Stock: ${product['stock']}'),
                trailing: Text(money(product['price'] as int))),
        ])),
      ]),
    );
  }
}
