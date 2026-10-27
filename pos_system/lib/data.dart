final products = [
  {'name': 'Coca Cola 500ml', 'price': 2500, 'stock': 50},
  {'name': 'Sprite 500ml', 'price': 2500, 'stock': 40},
  {'name': 'Water 500ml', 'price': 1500, 'stock': 100},
  {'name': 'Bread', 'price': 3000, 'stock': 30},
  {'name': 'Chips', 'price': 2000, 'stock': 45},
];

final cart = <int, int>{};
final customers = ['John Mwangi', 'Sarah Nakato', 'David Kato'];
final sales = <Map<String, Object>>[];
String businessName = 'My Store';

int get subtotal => cart.entries.fold(0, (sum, item) =>
    sum + (products[item.key]['price'] as int) * item.value);
int get tax => (subtotal * 0.18).round();
int get total => subtotal + tax;

String money(int amount) => 'UGX $amount';
