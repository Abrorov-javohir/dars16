import 'package:dars16/widgets/advertise.dart';
import 'package:dars16/widgets/category_card.dart';
import 'package:dars16/widgets/count_down_timer.dart';
import 'package:dars16/widgets/drawer.dart';
import 'package:dars16/widgets/electronic_equipments.dart';
import 'package:dars16/widgets/electronic_gadgets.dart';
import 'package:dars16/widgets/home_and_outdoor.dart';
import 'package:dars16/widgets/product_card.dart';
import 'package:dars16/widgets/recomend_item.dart';
import 'package:dars16/widgets/time_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
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
              const SizedBox(
                height: 20,
              ),
              Advertise(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Deals and offers",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CountdownTimer(),
                ],
              ),
              const SizedBox(height: 4),
              const Text(
                "Electronic equipments",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              ElectronicEquipments(),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    "Home and outdoor",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              HomeAndOutdoor(),
              const SizedBox(height: 20),
              const Row(
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
              ElectronicGadgets(),
              SizedBox(
                height: 20,
              ),
              Advertise2(),
              SizedBox(
                height: 20,
              ),
              RecommendedItems()
            ],
          ),
        ),
      ),
    );
  }
}
