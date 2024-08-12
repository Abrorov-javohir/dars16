import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  const CategoryCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Container(
        width: 90,
        height: 36,
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xff0D6EFD),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
