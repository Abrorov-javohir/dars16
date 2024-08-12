import 'package:dars16/screens/home_screen.dart';
import 'package:dars16/widgets/recoment_item_card.dart';
import 'package:flutter/material.dart';

class RecommendedItems extends StatelessWidget {
  const RecommendedItems({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'imagePath': 'assets/tshirt1.png',
        'price': '\$10.30',
        'description': 'T-shirt with multiple colors, for men',
      },
      {
        'imagePath': 'assets/kurtka.png',
        'price': '\$12.50',
        'description': 'Stylish white T-shirt, for men',
      },
      {
        'imagePath': 'assets/partmon.png',
        'price': '\$30.00',
        'description': 'Comfortable running shoes, for men',
      },
      {
        'imagePath': 'assets/koza.png',
        'price': '\$8.20',
        'description': 'Baseball cap with adjustable strap',
      },
      {
        'imagePath': 'assets/tshirt1.png',
        'price': '\$10.30',
        'description': 'T-shirt with multiple colors, for men',
      },
      {
        'imagePath': 'assets/kurtka.png',
        'price': '\$12.50',
        'description': 'Stylish white T-shirt, for men',
      },
      {
        'imagePath': 'assets/partmon.png',
        'price': '\$30.00',
        'description': 'Comfortable running shoes, for men',
      },
      {
        'imagePath': 'assets/koza.png',
        'price': '\$8.20',
        'description': 'Baseball cap with adjustable strap',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Recommended items",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return RecommendedItemCard(
                imagePath: item['imagePath']!,
                price: item['price']!,
                description: item['description']!,
              );
            },
          ),
        ),
      ],
    );
  }
}
