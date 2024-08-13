import 'package:dars16/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ElectronicEquipments extends StatefulWidget {
  const ElectronicEquipments({super.key});

  @override
  State<ElectronicEquipments> createState() => _ElectronicEquipmentsState();
}

class _ElectronicEquipmentsState extends State<ElectronicEquipments> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        padding: EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        children: const [
          ProductCard(
            imagePath: "assets/kostyum.png",
            title: "Kostyum",
            discount: "-25%",
          ),
          ProductCard(
            imagePath: "assets/headphone.png",
            title: "Headphones",
            discount: "-25%",
          ),
          ProductCard(
            imagePath: "assets/laptop.png",
            title: "Laptop",
            discount: "-25%",
          ),
        ],
      ),
    );
  }
}
