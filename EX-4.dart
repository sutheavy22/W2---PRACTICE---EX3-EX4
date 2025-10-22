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

  Order({
    required this.id,
    required this.customer,
    required this.items,
    required this.deliveryType,
  });

   double getTotalAmount() {
    double total = 0;
    for (var item in items) {
      total += item.getTotal();
    }

    if (deliveryType == DeliveryType.delivery) {
      total += 0; 
    }

    return total;
  }

  void printSummary() {
    print("Order $id for ${customer.name}");
    print("Delivery Type: ${deliveryType.name}");
    for (var item in items) {
      print("${item.product.name} x${item.quantity} = \$${item.getTotal()}");
    }
    print("Total Amount: \$${getTotalAmount()}");
  }
}

void main() {
  var product1 = Product(name: "Laptop", price: 120);
  var product2 = Product(name: "Mouse", price: 2.5);


  var customer = Customer(name: "Theavy", address: "Phnom Penh");


  var item1 = OrderItem(product: product1, quantity: 3);
  var item2 = OrderItem(product: product2, quantity: 2);

  var order1 = Order(
    id: 01,
    customer: customer,
    items: [item1, item2],
    deliveryType: DeliveryType.delivery,
  );

  order1.printSummary();
}