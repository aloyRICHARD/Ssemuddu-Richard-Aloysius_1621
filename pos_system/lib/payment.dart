import 'package:flutter/material.dart';
import 'data.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String method = 'Cash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment')),
      body: ListView(padding: const EdgeInsets.all(24), children: [
        const Text('Total Amount', textAlign: TextAlign.center),
        Text(money(total), textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        const SizedBox(height: 24),
        for (final name in ['Cash', 'Credit / Debit Card', 'Mobile Money', 'Bank Transfer'])
          ListTile(title: Text(name),
            trailing: Icon(method == name ? Icons.radio_button_checked : Icons.radio_button_off,
              color: Colors.blue),
            onTap: () => setState(() => method = name)),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: cart.isEmpty ? null : () {
            sales.add({'total': total, 'method': method});
            for (final item in cart.entries) {
              products[item.key]['stock'] = (products[item.key]['stock'] as int) - item.value;
            }
            cart.clear();
            Navigator.popUntil(context, ModalRoute.withName('/dashboard'));
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Demo sale recorded. No payment was collected.')));
          },
          child: const Text('Record Demo Sale'),
        ),
      ]),
    );
  }
}
