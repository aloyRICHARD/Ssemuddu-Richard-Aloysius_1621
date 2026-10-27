import 'package:flutter/material.dart';
import 'data.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Future<void> open(String route) async {
    await Navigator.pushNamed(context, route);
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final revenue = sales.fold<int>(0, (sum, sale) => sum + (sale['total'] as int));
    return Scaffold(
      appBar: AppBar(title: Text(businessName), actions: [
        IconButton(onPressed: () => open('/settings'), icon: const Icon(Icons.settings)),
      ]),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text('Good Morning, Business Owner', style: TextStyle(fontSize: 20)),
          Card(color: Colors.blue, child: Padding(
            padding: const EdgeInsets.all(24),
            child: Text('Session Sales\n${money(revenue)}',
              style: const TextStyle(color: Colors.white, fontSize: 24)),
          )),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () => open('/products'), child: const Text('New Sale')),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: () => open('/inventory'), child: const Text('Inventory')),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: () => open('/customers'), child: const Text('Customers')),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: () => open('/reports'), child: const Text('Reports')),
          const SizedBox(height: 24),
          const Text('Recent Transactions', style: TextStyle(fontSize: 20)),
          if (sales.isEmpty) const ListTile(title: Text('No sales yet')),
          for (final sale in sales.reversed)
            ListTile(leading: const Icon(Icons.receipt_long),
              title: Text('${sale['method']} (Demo)'),
              trailing: Text(money(sale['total'] as int))),
        ],
      ),
    );
  }
}
