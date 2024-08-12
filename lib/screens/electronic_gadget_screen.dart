import 'package:dars16/widgets/product_card2.dart';
import 'package:flutter/material.dart';
import 'package:dars16/widgets/category_card.dart';

class ElectronicGadgetScreen extends StatefulWidget {
  const ElectronicGadgetScreen({super.key});

  @override
  State<ElectronicGadgetScreen> createState() => _ElectronicGadgetScreenState();
}

class _ElectronicGadgetScreenState extends State<ElectronicGadgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Brand",
          style: TextStyle(
            color: Color(0xff8CB7F5),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.card_travel_sharp,
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(
                  Icons.search,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryCard(title: "All category"),
                  SizedBox(width: 10),
                  CategoryCard(title: "Gadgets"),
                  SizedBox(width: 10),
                  CategoryCard(title: "Clothes"),
                  SizedBox(width: 10),
                  CategoryCard(title: "Accessory"),
                  SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.sort),
                  label: const Text("Sort: Newest"),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_list),
                  label: const Text("Filter (3)"),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.view_module),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.view_list),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Wrap(
              spacing: 10,
              children: const [
                Chip(label: Text("Huawei"), onDeleted: null),
                Chip(label: Text("Apple"), onDeleted: null),
                Chip(label: Text("64GB"), onDeleted: null),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: const [
                  ProductCard2(
                    imagePath: "assets/iphone12.png",
                    title: "Iphone 12 is the wort phone",
                    price: "\$10.70",
                    rating: 7.5,
                    orders: 154,
                    shippingInfo: "Free Shipping",
                  ),
                  ProductCard2(
                    imagePath: "assets/laptop.png",
                    title: "Regular Fit Resort Shirt",
                    price: "\$57.70",
                    rating: 7.5,
                    orders: 154,
                    shippingInfo: "Free Shipping",
                  ),
                  ProductCard2(
                    imagePath: "assets/ipad.png",
                    title: "Regular Fit Resort Shirt",
                    price: "\$57.70",
                    rating: 7.5,
                    orders: 154,
                    shippingInfo: "Free Shipping",
                  ),
                  ProductCard2(
                    imagePath: "assets/samsung.png",
                    title: "Regular Fit Resort Shirt",
                    price: "\$57.70",
                    rating: 7.5,
                    orders: 154,
                    shippingInfo: "Free Shipping",
                  ),
                  ProductCard2(
                    imagePath: "assets/samsung_S24_Ultra.png",
                    title: "Regular Fit Resort Shirt",
                    price: "\$57.70",
                    rating: 7.5,
                    orders: 154,
                    shippingInfo: "Free Shipping",
                  ),
                  ProductCard2(
                    imagePath: "assets/headphone.png",
                    title: "Regular Fit Resort Shirt",
                    price: "\$57.70",
                    rating: 7.5,
                    orders: 154,
                    shippingInfo: "Free Shipping",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
