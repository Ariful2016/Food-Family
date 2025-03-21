import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/shimmers/categories_shimmer.dart';
import 'package:foodly/hooks/fetch_categories.dart';
import 'package:foodly/models/categories.dart';
import 'package:foodly/views/home/widgets/category_widget.dart';

class CategoryList extends HookWidget {
  const CategoryList({super.key});

 /* @override
  Widget build(BuildContext context) {
    final hookResult = useFetchCategories();
    List<CategoriesModel>? categoriesList = hookResult.data;
    final isLoading = hookResult.isLoading;
    final error = hookResult.error;

    return isLoading
        ? const CatergoriesShimmer()
        : Container(
            height: 80.h,
            padding: EdgeInsets.only(left: 12.w, top: 10.h),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(categoriesList!.length, (i) {
                CategoriesModel category = categoriesList[i];
                return CategoryWidget(category: category);
              }),
            ),
          );
  }*/
  @override
  Widget build(BuildContext context) {
    final hookResult = useFetchCategories();
    List<CategoriesModel>? categoriesList = hookResult.data;
    final isLoading = hookResult.isLoading;
    final error = hookResult.error;

    if (isLoading) {
      return const CatergoriesShimmer();
    }

    if (error != null) {
      return Center(
        child: Text(
          "Failed to load categories: ${error.toString()}",
          style: TextStyle(color: Colors.red, fontSize: 14.sp),
        ),
      );
    }

    // Ensure categoriesList is not null before generating the list
    if (categoriesList == null || categoriesList.isEmpty) {
      return Center(
        child: Text(
          "No categories found",
          style: TextStyle(fontSize: 14.sp, color: Colors.grey),
        ),
      );
    }

    return Container(
      height: 80.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(categoriesList.length, (i) {
          CategoriesModel category = categoriesList[i];
          return CategoryWidget(category: category);
        }),
      ),
    );
  }

}
