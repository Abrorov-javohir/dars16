import 'package:dars16/widgets/routes.dart';
import 'package:flutter/material.dart';
import 'package:dars16/widgets/product_card.dart';
import 'package:go_router/go_router.dart';

class HomeAndOutdoor extends StatefulWidget {
  const HomeAndOutdoor({super.key});

  @override
  State<HomeAndOutdoor> createState() => _HomeAndOutdoorState();
}

class _HomeAndOutdoorState extends State<HomeAndOutdoor> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Home and Outdoor",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: ListView(
              padding: EdgeInsets.all(8),
              scrollDirection: Axis.horizontal,
              children: [
                InkWell(
                  onTap: () {
                    context.goNamed(
                        AppRoutes.sushilka); // Bu yerda nom to'g'irlandi
                  },
                  child: const ProductCard(
                    imagePath: "assets/image1.png",
                    title: "Sushilka",
                    discount: "-25%",
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.goNamed(
                        AppRoutes.comfort_chair); // Bu yerda nom to'g'irlandi
                  },
                  child: const ProductCard(
                    imagePath: "assets/comfort_chair.png",
                    title: "Comfort Chair",
                    discount: "-25%",
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.goNamed(
                        AppRoutes.laptop2); // Bu yerda nom to'g'irlandi
                  },
                  child: const ProductCard(
                    imagePath: "assets/laptop.png",
                    title: "Laptop",
                    discount: "-25%",
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.goNamed(
                        AppRoutes.samsung2); // Bu yerda nom to'g'irlandi
                  },
                  child: const ProductCard(
                    imagePath: "assets/sofa.png",
                    title: "Laptop",
                    discount: "-25%",
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.goNamed(
                        AppRoutes.samsung3); // Bu yerda nom to'g'irlandi
                  },
                  child: const ProductCard(
                    imagePath: "assets/image1.png",
                    title: "Kostyum",
                    discount: "-25%",
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.goNamed(
                        AppRoutes.comfort_chair); // Bu yerda nom to'g'irlandi
                  },
                  child: const ProductCard(
                    imagePath: "assets/comfort_chair.png",
                    title: "Headphones",
                    discount: "-25%",
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.goNamed(
                        AppRoutes.laptop2); // Bu yerda nom to'g'irlandi
                  },
                  child: const ProductCard(
                    imagePath: "assets/laptop.png",
                    title: "Laptop",
                    discount: "-25%",
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.goNamed(
                        AppRoutes.samsung2); // Bu yerda nom to'g'irlandi
                  },
                  child: const ProductCard(
                    imagePath: "assets/sofa.png",
                    title: "Laptop",
                    discount: "-25%",
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.goNamed(
                        AppRoutes.laptop3); // Bu yerda nom to'g'irlandi
                  },
                  child: const ProductCard(
                    imagePath: "assets/laptop.png",
                    title: "Laptop",
                    discount: "-25%",
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.goNamed(AppRoutes
                        .home_and_outdoor2); // Bu yerda nom to'g'irlandi
                  },
                  child: const ProductCard(
                    imagePath: "assets/sofa.png",
                    title: "Laptop",
                    discount: "-25%",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.blue.withOpacity(0.1), // Rangi ochroq qilish uchun.
            child: TextButton(
              onPressed: () {
                context.goNamed(
                    AppRoutes.home_and_outdoor); // Bu yerda nom to'g'irlandi
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Source now",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
