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
        const SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: const [
              ProductCard(
                imagePath: "assets/iphone12.png",
                title: "Iphone 12",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/ipad.png",
                title: "Ipad",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/mi.png",
                title: "Mi",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/samsung_S24_Ultra.png",
                title: "Samsung S24 Ultra",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/samsung.png",
                title: "Samsung",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/samsung9.png",
                title: "Samsung 9",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/laptop.png",
                title: "Laptop",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/sofa.png",
                title: "Sofa",
                discount: "-25%",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
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
        ),
      ],
    );
  }
}
