import 'package:flutter/material.dart';
import 'package:dars16/widgets/product_card.dart';
import 'package:go_router/go_router.dart';
import 'package:dars16/widgets/routes.dart';

class ElectronicGadgets extends StatefulWidget {
  const ElectronicGadgets({super.key});

  @override
  State<ElectronicGadgets> createState() => _ElectronicGadgetsState();
}

class _ElectronicGadgetsState extends State<ElectronicGadgets> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: const Row(
            children: [
              Text(
                "Electronic Gadgets",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            padding: EdgeInsets.all(8),
            scrollDirection: Axis.horizontal,
            children: [
              InkWell(
                onTap: () {
                  context.goNamed(
                      AppRoutes.profileSettings); // Bu yerda nom to'g'irlandi
                },
                child: ProductCard(
                  imagePath: "assets/iphone12.png",
                  title: "Iphone 12",
                  discount: "-25%",
                ),
              ),
              InkWell(
                onTap: () {
                  context.goNamed(AppRoutes.ipad); // Bu yerda nom to'g'irlandi
                },
                child: ProductCard(
                  imagePath: "assets/ipad.png",
                  title: "Ipad",
                  discount: "-25%",
                ),
              ),
              InkWell(
                onTap: () {
                  context.goNamed(AppRoutes.mi); // Bu yerda nom to'g'irlandi
                },
                child: ProductCard(
                  imagePath: "assets/mi.png",
                  title: "Mi",
                  discount: "-25%",
                ),
              ),
              InkWell(
                onTap: () {
                  context.goNamed(
                      AppRoutes.samsung_galaxy); // Bu yerda nom to'g'irlandi
                },
                child: ProductCard(
                  imagePath: "assets/samsung_S24_Ultra.png",
                  title: "Samsung S24 Ultra",
                  discount: "-25%",
                ),
              ),
              InkWell(
                onTap: () {
                  context
                      .goNamed(AppRoutes.samsung); // Bu yerda nom to'g'irlandi
                },
                child: ProductCard(
                  imagePath: "assets/samsung.png",
                  title: "Samsung",
                  discount: "-25%",
                ),
              ),
              InkWell(
                onTap: () {
                  context
                      .goNamed(AppRoutes.samsung9); // Bu yerda nom to'g'irlandi
                },
                child: const ProductCard(
                  imagePath: "assets/samsung9.png",
                  title: "Samsung 9",
                  discount: "-25%",
                ),
              ),
              InkWell(
                onTap: () {
                  context
                      .goNamed(AppRoutes.laptop); // Bu yerda nom to'g'irlandi
                },
                child: ProductCard(
                  imagePath: "assets/laptop.png",
                  title: "Laptop",
                  discount: "-25%",
                ),
              ),
              InkWell(
                onTap: () {
                  context.goNamed(
                      AppRoutes.headphone); // Bu yerda nom to'g'irlandi
                },
                child: ProductCard(
                  imagePath: "assets/headphone.png",
                  title: "Headphone",
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
              context.goNamed(AppRoutes.news); // Bu yerda nom to'g'irlandi
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
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
    );
  }
}
