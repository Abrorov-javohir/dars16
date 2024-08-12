import 'package:flutter/material.dart';
import 'package:dars16/widgets/product_card.dart';

class HomeAndOutdoor extends StatefulWidget {
  const HomeAndOutdoor({super.key});

  @override
  State<HomeAndOutdoor> createState() => _HomeAndOutdoorState();
}

class _HomeAndOutdoorState extends State<HomeAndOutdoor> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: const [
              ProductCard(
                imagePath: "assets/image1.png",
                title: "Kostyum",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/comfort_chair.png",
                title: "Headphones",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/laptop.png",
                title: "Laptop",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/sofa.png",
                title: "Laptop",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/image1.png",
                title: "Kostyum",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/comfort_chair.png",
                title: "Headphones",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/laptop.png",
                title: "Laptop",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/sofa.png",
                title: "Laptop",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/laptop.png",
                title: "Laptop",
                discount: "-25%",
              ),
              ProductCard(
                imagePath: "assets/sofa.png",
                title: "Laptop",
                discount: "-25%",
              ),
              // Add more ProductCards as needed
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: 50,
            color: Colors.blue.withOpacity(0.1), // Rangi ochroq qilish uchun.
            child: const TextButton(
              onPressed: null,
              child: Row(
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
        ),
      ],
    );
  }
}
