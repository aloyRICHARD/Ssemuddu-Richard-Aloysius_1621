import 'package:flutter/material.dart';
import 'data.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});
  @override
  Widget build(BuildContext context) {
    final revenue = sales.fold<int>(0, (sum, sale) => sum + (sale['total'] as int));
    return Scaffold(
      appBar: AppBar(title: const Text('Reports')),
      body: ListView(padding: const EdgeInsets.all(20), children: [
        const Text('Current Session', style: TextStyle(fontSize: 24)),
        Card(child: ListTile(title: const Text('Total Sales'), trailing: Text(money(revenue)))),
        Card(child: ListTile(title: const Text('Transactions'), trailing: Text('${sales.length}'))),
        Card(child: ListTile(title: const Text('Customers'), trailing: Text('${customers.length}'))),
        const SizedBox(height: 20),
        const Text('Sales by Payment Method', style: TextStyle(fontSize: 20)),
        for (final method in ['Cash', 'Credit / Debit Card', 'Mobile Money', 'Bank Transfer'])
          ListTile(title: Text(method), trailing: Text(money(
            sales.where((sale) => sale['method'] == method).fold<int>(
              0, (sum, sale) => sum + (sale['total'] as int))))),
      ]),
    );
  }
}
