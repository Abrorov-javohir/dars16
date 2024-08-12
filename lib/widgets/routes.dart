import 'package:dars16/screens/product_detail_screen.dart';
import 'package:dars16/screens/shopping_cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:dars16/screens/electronic_gadget_screen.dart';
import 'package:dars16/screens/home_screen.dart';

class AppRoutes {
  static const String home = "/home";
  static const String news = "electronicgadgetsscreen"; // Nomi to'g'irlandi
  static const String settings = "settings";
  static const String profileSettings = "profileSettings";
  static const String notificationsSettings = "notificationsSettings";

  static final config = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(
        path: home,
        name: home,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: news,
            name: news,
            builder: (context, state) => const ElectronicGadgetScreen(),
          ),
          GoRoute(
            path: settings,
            name: settings,
            builder: (context, state) =>
                const ElectronicGadgetScreen(), // Correct the route here if necessary
          ),
          GoRoute(
            path: profileSettings,
            name: profileSettings,
            builder: (context, state) =>
                const ProductDetailScreen(), // Correct the route here if necessary
          ),
          GoRoute(
            path: notificationsSettings,
            name: notificationsSettings,
            builder: (context, state) =>
                ShoppingCartScreen(), // Correct the route here if necessary
          ),
        ],
      ),
    ],
  );
}
