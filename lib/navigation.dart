import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:get/get.dart';
import 'package:sgp/common/personalization/screen/setting/setting.dart';
import 'package:sgp/features/shop/screens/store/store.dart';
import 'package:sgp/features/shop/screens/wishlist/wishlist.dart';

import 'features/shop/screens/home/home.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: Controller.selectedIndex.value,
          onDestinationSelected: (index) => Controller.selectedIndex.value = index,
          destinations: [
          NavigationDestination(icon: Icon(Iconsax.home), label: "home"),
          NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "WishList"),
          NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),

        ],
      ),
      ),
      body:Obx(  () => Controller.screens[Controller.selectedIndex.value]),
    );
  }
}


class NavigationController extends GetxController{
  final Rx<int> selectedIndex=0.obs;
  final screens = [ const HomeScreen(), const StoreScreen(), const FavoriteScreen(), const SettingsScreen()];
}

