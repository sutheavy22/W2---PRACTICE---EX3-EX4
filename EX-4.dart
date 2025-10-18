enum DeliveryType { pickup, delivery }

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

class Customer {
  final String name;
  final String address;

  Customer({required this.name, required this.address});
}

class OrderItem {
  final Product product;
  final int quantity;

  OrderItem({required this.product, required this.quantity});

  double getTotal() {
    return product.price * quantity;
  }
}

class Order {
  final int id;
  final Customer customer;
  final List<OrderItem> items;
  final DeliveryType deliveryType;

  Order({required this.id,required this.customer,required this.items, required this.deliveryType,});
}