import 'package:flutter/material.dart';
import 'data.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});
  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Sale')),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        const ListTile(leading: Icon(Icons.person_outline), title: Text('Walk-in Customer')),
        for (final item in cart.entries.toList())
          Card(child: Column(children: [
            ListTile(title: Text('${products[item.key]['name']}'),
              trailing: Text(money((products[item.key]['price'] as int) * item.value))),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(icon: const Icon(Icons.remove), onPressed: () {
                setState(() {
                  if (item.value == 1) {
                    cart.remove(item.key);
                  } else {
                    cart[item.key] = item.value - 1;
                  }
                });
              }),
              Text('${item.value}'),
              IconButton(icon: const Icon(Icons.add), onPressed: () {
                if (item.value < (products[item.key]['stock'] as int)) {
                  setState(() => cart[item.key] = item.value + 1);
                }
              }),
            ]),
          ])),
        const Divider(),
        ListTile(title: const Text('Subtotal'), trailing: Text(money(subtotal))),
        ListTile(title: const Text('Tax (18% demo rate)'), trailing: Text(money(tax))),
        ListTile(title: const Text('Total'), trailing: Text(money(total))),
        ElevatedButton(
          onPressed: cart.isEmpty ? null : () => Navigator.pushNamed(context, '/payment'),
          child: const Text('Continue to Payment'),
        ),
      ]),
    );
  }
}
