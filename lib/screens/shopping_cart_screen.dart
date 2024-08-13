import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatelessWidget {
  final List<CartItem> items = [
    CartItem(
      name: "Iphone 12",
      size: "medium",
      color: "blue",
      price: 78.99,
      quantity: 2,
      seller: "Iphone Corporation",
      imageUrl: "assets/iphone12.png", // Replace with actual image URL
    ),
    CartItem(
      name: "Ipad",
      size: "medium",
      color: "blue",
      price: 78.99,
      quantity: 1,
      seller: "Iphone Corporation",
      imageUrl: "assets/ipad.png", // Replace with actual image URL
    ),
    CartItem(
      name: "Samsung",
      size: "medium",
      color: "black",
      price: 78.99,
      quantity: 2,
      seller: "Samsung Corporation",
      imageUrl: "assets/samsung.png", // Replace with actual image URL
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping cart"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ShoppingCartItemWidget(item: items[index]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Items (${items.length}):",
                        style: TextStyle(fontSize: 16)),
                    Text("\$32.00", style: TextStyle(fontSize: 16)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Shipping:", style: TextStyle(fontSize: 16)),
                    Text("\$10.00", style: TextStyle(fontSize: 16)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Tax:", style: TextStyle(fontSize: 16)),
                    Text("\$7.00", style: TextStyle(fontSize: 16)),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total:",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("\$220.00",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Handle checkout
                  },
                  child: Text("Checkout (${items.length} items)"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartItem {
  final String name;
  final String size;
  final String color;
  final double price;
  final int quantity;
  final String seller;
  final String imageUrl; // New field for image URL

  CartItem({
    required this.name,
    required this.size,
    required this.color,
    required this.price,
    required this.quantity,
    required this.seller,
    required this.imageUrl, // Initialize the image URL
  });
}

class ShoppingCartItemWidget extends StatelessWidget {
  final CartItem item;

  ShoppingCartItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product image from network
            Container(
              height: 80,
              width: 80,
              color: Colors.grey[300],
              child: Image.asset(
                item.imageUrl, // Assuming CartItem has an imageUrl field
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            // Product details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("Size: ${item.size}, Color: ${item.color}"),
                  Text("Seller: ${item.seller}"),
                  Text("\$${item.price.toStringAsFixed(2)}"),
                ],
              ),
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    // Handle decrease quantity
                  },
                ),
                Text(item.quantity.toString(), style: TextStyle(fontSize: 16)),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // Handle increase quantity
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
