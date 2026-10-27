import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(children: [
        const ListTile(leading: CircleAvatar(child: Icon(Icons.person)),
          title: Text('Business Owner'), subtitle: Text('Demo Account')),
        ListTile(leading: const Icon(Icons.store), title: const Text('Business Profile'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => Navigator.pushNamed(context, '/business')),
        ListTile(leading: const Icon(Icons.inventory_2), title: const Text('Inventory'),
          onTap: () => Navigator.pushNamed(context, '/inventory')),
        ListTile(leading: const Icon(Icons.people), title: const Text('Customers'),
          onTap: () => Navigator.pushNamed(context, '/customers')),
        ListTile(leading: const Icon(Icons.wifi_off), title: const Text('Offline Information'),
          onTap: () => Navigator.pushNamed(context, '/offline')),
        ListTile(leading: const Icon(Icons.info_outline), title: const Text('About'),
          onTap: () => showAboutDialog(context: context,
            applicationName: 'POS Retail Pro', applicationVersion: '1.0.0',
            children: [const Text('A simple student Flutter demonstration.')])),
        ListTile(leading: const Icon(Icons.logout), title: const Text('Logout'),
          onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false)),
      ]),
    );
  }
}
