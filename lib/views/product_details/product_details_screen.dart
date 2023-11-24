import 'package:avialdo_solutions/views/product_details/components/details_container.dart';
import 'package:avialdo_solutions/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var productsData = Get.arguments;
    return Scaffold(
      appBar:
          const CustomAppBar(title: "PRODUCT DETAILS", showBackButton: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            Hero(
              tag: productsData['image'],
              child: Image(
                height: 220.h,
                image: NetworkImage(productsData['image']),
              ),
            ),
            SizedBox(height: 20.h),
            MyDetailsContainer(
              title: productsData['title'],
              category: productsData['category'],
              description: productsData['description'],
              rating: productsData['rating']['rate'].toDouble(),
              price: "\$${productsData['price'].toString()}",
            )
          ],
        ),
      ),
    );
  }
}
