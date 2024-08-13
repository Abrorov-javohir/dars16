import 'package:dars16/widgets/product_card2.dart';
import 'package:dars16/widgets/routes.dart';
import 'package:flutter/material.dart';
import 'package:dars16/widgets/category_card.dart';
import 'package:go_router/go_router.dart';

class HomeAndOutdoorDetailsScreen extends StatefulWidget {
  const HomeAndOutdoorDetailsScreen({super.key});

  @override
  State<HomeAndOutdoorDetailsScreen> createState() =>
      _HomeAndOutdoorDetailsScreenState();
}

class _HomeAndOutdoorDetailsScreenState
    extends State<HomeAndOutdoorDetailsScreen> {
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
              children: [
                Chip(label: Text("Huawei"), onDeleted: null),
                Chip(label: Text("Apple"), onDeleted: null),
                Chip(label: Text("64GB"), onDeleted: null),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      context.goNamed(
                          AppRoutes.sushilka); // Bu yerda nom to'g'irlandi
                    },
                    child: const ProductCard3(
                      imagePath: "assets/image1.png",
                      title: "Good for Clothes",
                      price: "\$10.70",
                      rating: 7.5,
                      orders: 154,
                      shippingInfo: "Free Shipping",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.goNamed(
                          AppRoutes.comfort_chair); // Bu yerda nom to'g'irlandi
                    },
                    child: const ProductCard3(
                      imagePath: "assets/comfort_chair.png",
                      title: "Regular Fit Resort Shirt",
                      price: "\$57.70",
                      rating: 7.5,
                      orders: 154,
                      shippingInfo: "Free Shipping",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.goNamed(
                          AppRoutes.laptop2); // Bu yerda nom to'g'irlandi
                    },
                    child: const ProductCard3(
                      imagePath: "assets/laptop.png",
                      title: "Regular Fit Resort Shirt",
                      price: "\$57.70",
                      rating: 7.5,
                      orders: 154,
                      shippingInfo: "Free Shipping",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.goNamed(
                          AppRoutes.samsung2); // Bu yerda nom to'g'irlandi
                    },
                    child: const ProductCard3(
                      imagePath: "assets/sofa.png",
                      title: "Regular Fit Resort Shirt",
                      price: "\$57.70",
                      rating: 7.5,
                      orders: 154,
                      shippingInfo: "Free Shipping",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.goNamed(
                          AppRoutes.samsung3); // Bu yerda nom to'g'irlandi
                    },
                    child: const ProductCard3(
                      imagePath: "assets/image1.png",
                      title: "Regular Fit Resort Shirt",
                      price: "\$57.70",
                      rating: 7.5,
                      orders: 154,
                      shippingInfo: "Free Shipping",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.goNamed(
                          AppRoutes.laptop3); // Bu yerda nom to'g'irlandi
                    },
                    child: const ProductCard3(
                      imagePath: "assets/comfort_chair.png",
                      title: "Regular Fit Resort Shirt",
                      price: "\$57.70",
                      rating: 7.5,
                      orders: 154,
                      shippingInfo: "Free Shipping",
                    ),
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
