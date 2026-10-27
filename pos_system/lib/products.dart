import 'package:flutter/material.dart';
import 'data.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});
  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  String search = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: Column(children: [
        Padding(padding: const EdgeInsets.all(16), child: TextField(
          decoration: const InputDecoration(labelText: 'Search products',
            prefixIcon: Icon(Icons.search)),
          onChanged: (value) => setState(() => search = value.toLowerCase()),
        )),
        Expanded(child: ListView(children: [
          for (int i = 0; i < products.length; i++)
            if ((products[i]['name'] as String).toLowerCase().contains(search))
              ListTile(
                leading: const Icon(Icons.shopping_bag_outlined),
                title: Text('${products[i]['name']}'),
                subtitle: Text('${money(products[i]['price'] as int)}\nStock: ${products[i]['stock']}'),
                trailing: IconButton(icon: const Icon(Icons.add_circle, color: Colors.blue),
                  onPressed: () {
                    if ((cart[i] ?? 0) < (products[i]['stock'] as int)) {
                      setState(() => cart[i] = (cart[i] ?? 0) + 1);
                    }
                  }),
              ),
        ])),
        Padding(padding: const EdgeInsets.all(16), child: ElevatedButton(
          onPressed: cart.isEmpty ? null : () => Navigator.pushNamed(context, '/checkout'),
          child: Text('View Cart (${cart.values.fold<int>(0, (a, b) => a + b)})'),
        )),
      ]),
    );
  }
}
