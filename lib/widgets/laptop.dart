import 'package:dars16/widgets/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Laptop extends StatelessWidget {
  const Laptop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/laptop.png",
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    SizedBox(width: 4),
                    Text("4.5"),
                    SizedBox(width: 4),
                    Text("(32 reviews)"),
                  ],
                ),
                Spacer(),
                Text("154 sold"),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "Product name goes here",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Row(
              children: [
                Text(
                  "\$129.95",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "50-100 pcs",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                context.goNamed(AppRoutes
                    .notificationsSettings); // Bu yerda nom to'g'irlandi
              },
              child: const Text("Send inquiry"),
            ),
            const SizedBox(height: 10),
            const Text("Condition: Brand new"),
            const Text("Material: Plastic"),
            const Text("Category: Electronics, gadgets"),
            const Text("Item num: 23421"),
            const SizedBox(height: 10),
            const Text(
              "Info about edu item is an ideal companion for anyone engaged in learning. The drone provides precise and ...",
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Read more"),
            ),
            const Divider(),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("R"),
              ),
              title: const Text("Supplier: Guanjoi Trading LLC"),
              subtitle: const Text("Germany"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.verified, color: Colors.green),
                  SizedBox(width: 5),
                  Icon(Icons.local_shipping, color: Colors.blue),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
