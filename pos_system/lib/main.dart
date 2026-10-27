import 'package:flutter/material.dart';
import 'welcome.dart';
import 'login.dart';
import 'signup.dart';
import 'dashboard.dart';
import 'products.dart';
import 'checkout.dart';
import 'payment.dart';
import 'inventory.dart';
import 'customers.dart';
import 'reports.dart';
import 'settings.dart';
import 'offline.dart';
import 'business_profile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/products': (context) => const ProductsPage(),
        '/checkout': (context) => const CheckoutPage(),
        '/payment': (context) => const PaymentPage(),
        '/inventory': (context) => const InventoryPage(),
        '/customers': (context) => const CustomersPage(),
        '/reports': (context) => const ReportsPage(),
        '/settings': (context) => const SettingsPage(),
        '/offline': (context) => const OfflinePage(),
        '/business': (context) => const BusinessProfilePage(),
      },
    );
  }
}
