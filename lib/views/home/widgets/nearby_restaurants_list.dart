import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/shimmers/nearby_shimmer.dart';
import 'package:foodly/hooks/fetch_restaurants.dart';
import 'package:foodly/models/restaurants_model.dart';
import 'package:foodly/views/home/widgets/restaurant_widget.dart';
import 'package:foodly/views/restaurant/restaurant_page.dart';
import 'package:get/get.dart';

class NearbyRestaurants extends HookWidget {
  const NearbyRestaurants({super.key});

  /*@override
  Widget build(BuildContext context) {
    final hookResults = useFetchRestaurants("41007428");
    List<RestaurantsModel>? restaurants = hookResults.data;
    final isLoading = hookResults.isLoading;

    return isLoading
        ? const NearbyShimmer()
        : Container(
            height: 190.h,
            padding: EdgeInsets.only(left: 12.w, top: 10.h),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(restaurants!.length, (i) {
                RestaurantsModel restaurant = restaurants[i];
                return RestaurantWidget(
                    onTap: () {
                      Get.to(() => RestaurantPage(restaurant: restaurant));
                    },
                    image: restaurant.imageUrl,
                    logo: restaurant.logoUrl,
                    title: restaurant.title,
                    time: restaurant.time,
                    rating: "7457");
              }),
            ),
          );
  }*/
  @override
  Widget build(BuildContext context) {
    final hookResults = useFetchRestaurants("41007428");
    List<RestaurantsModel>? restaurants = hookResults.data;
    final isLoading = hookResults.isLoading;
    final error = hookResults.error;

    if (isLoading) {
      return const NearbyShimmer();
    }

    if (error != null) {
      return Center(
        child: Text(
          "Failed to load restaurants: ${error.toString()}",
          style: TextStyle(color: Colors.red, fontSize: 14.sp),
        ),
      );
    }

    // Ensure restaurants is not null before using it
    if (restaurants == null || restaurants.isEmpty) {
      return Center(
        child: Text(
          "No nearby restaurants found",
          style: TextStyle(fontSize: 14.sp, color: Colors.grey),
        ),
      );
    }

    return Container(
      height: 190.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (i) {
          RestaurantsModel restaurant = restaurants[i];
          return RestaurantWidget(
            onTap: () {
              Get.to(() => RestaurantPage(restaurant: restaurant));
            },
            image: restaurant.imageUrl,
            logo: restaurant.logoUrl,
            title: restaurant.title,
            time: restaurant.time,
            rating: "7457",
          );
        }),
      ),
    );
  }

}
