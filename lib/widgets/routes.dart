import 'package:dars16/screens/home_and_outdoor_details_screen.dart';
import 'package:dars16/screens/product_detail_screen.dart';
import 'package:dars16/screens/shopping_cart_screen.dart';
import 'package:dars16/widgets/HomeAndOutdoorDetailsScreen2.dart';
import 'package:dars16/widgets/comfort_chair.dart';
import 'package:dars16/widgets/head_phone_3.dart';
import 'package:dars16/widgets/headphone.dart';
import 'package:dars16/widgets/ipad.dart';
import 'package:dars16/widgets/laptop.dart';
import 'package:dars16/widgets/laptop2.dart';
import 'package:dars16/widgets/laptop3.dart';
import 'package:dars16/widgets/mi.dart';
import 'package:dars16/widgets/samsung.dart';
import 'package:dars16/widgets/samsung2.dart';
import 'package:dars16/widgets/samsung3.dart';
import 'package:dars16/widgets/samsung9.dart';
import 'package:dars16/widgets/samsung_galaxy.dart';
import 'package:dars16/widgets/sushilka.dart';
import 'package:go_router/go_router.dart';
import 'package:dars16/screens/electronic_gadget_screen.dart';
import 'package:dars16/screens/home_screen.dart';

class AppRoutes {
  static const String home = "/home";
  static const String news = "electronicgadgetsscreen"; // Nomi to'g'irlandi
  static const String settings = "settings";
  static const String profileSettings = "profileSettings";
  static const String notificationsSettings = "notificationsSettings";
  static const String ipad = "ipad";
  static const String mi = "mi";
  // ignore: constant_identifier_names
  static const String samsung_galaxy = "samsung_galaxy";
  static const String samsung = "samsung";
  static const String samsung9 = "samsung9";
  static const String laptop = "laptop";
  static const String headphone = "headphone";
  // ignore: constant_identifier_names
  static const String home_and_outdoor = "home_and_outdoor";

  static const String sushilka = "sushilka";
  // ignore: constant_identifier_names
  static const String comfort_chair = "comfort_chair";
  // ignore: constant_identifier_names
  static const String laptop2 = "laptop2";
  static const String samsung2 = "samsung2";
  static const String samsung3 = "samsung3";
  static const String laptop3 = "laptop3";
  static const String headphone3 = "headphone3";
  // ignore: constant_identifier_names
  static const String home_and_outdoor2 = "home_and_outdoor2";

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
            builder: (context, state) => const ElectronicGadgetScreen(),
          ),
          GoRoute(
            path: profileSettings,
            name: profileSettings,
            builder: (context, state) => const ProductDetailScreen(),
          ),
          GoRoute(
            path: notificationsSettings,
            name: notificationsSettings,
            builder: (context, state) => ShoppingCartScreen(),
          ),
          GoRoute(
            path: ipad,
            name: ipad,
            builder: (context, state) => const Ipad(),
          ),
          GoRoute(
            path: mi,
            name: mi,
            builder: (context, state) => const Mi(),
          ),
          GoRoute(
            path: samsung_galaxy,
            name: samsung_galaxy,
            builder: (context, state) => const SamsungGalaxy(),
          ),
          GoRoute(
            path: samsung,
            name: samsung,
            builder: (context, state) => const Samsung(),
          ),
          GoRoute(
            path: samsung9,
            name: samsung9,
            builder: (context, state) => const Samsung9(),
          ),
          GoRoute(
            path: laptop,
            name: laptop,
            builder: (context, state) => const Laptop(),
          ),
          GoRoute(
            path: headphone,
            name: headphone,
            builder: (context, state) => const Headphone(),
          ),
          GoRoute(
            path: home_and_outdoor,
            name: home_and_outdoor,
            builder: (context, state) => const HomeAndOutdoorDetailsScreen(),
          ),
          GoRoute(
            path: sushilka,
            name: sushilka,
            builder: (context, state) => const Sushilka(),
          ),
          GoRoute(
            path: comfort_chair,
            name: comfort_chair,
            builder: (context, state) => const ComfortChair(),
          ),
          GoRoute(
            path: laptop2,
            name: laptop2,
            builder: (context, state) => const Laptop2(),
          ),
          GoRoute(
            path: samsung2,
            name: samsung2,
            builder: (context, state) => const Samsung2(),
          ),
          GoRoute(
            path: samsung3,
            name: samsung3,
            builder: (context, state) => const Samsung3(),
          ),
          GoRoute(
            path: laptop3,
            name: laptop3,
            builder: (context, state) => const Laptop3(),
          ),
          GoRoute(
            path: headphone3,
            name: headphone3,
            builder: (context, state) => const HeadPhone3(),
          ),
          GoRoute(
            path: home_and_outdoor2,
            name: home_and_outdoor2,
            builder: (context, state) => const Homeandoutdoordetailsscreen2(),
          ),
        ],
      ),
    ],
  );
}
