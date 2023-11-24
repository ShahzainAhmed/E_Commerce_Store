import 'package:avialdo_solutions/services/api_service.dart';
import 'package:avialdo_solutions/views/product_details/product_details_screen.dart';
import 'package:avialdo_solutions/views/home/components/product_tile_container.dart';
import 'package:avialdo_solutions/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    super.initState();
    fetchApi();
  }

  List<dynamic> products = [];

  void fetchApi() async {
    List<dynamic> jsonData = await ApiService().fetchProducts();
    setState(() {
      products = jsonData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "PRODUCTS"),
      body: MasonryGridView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
        itemCount: products.length,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () => Get.to(
                const ProductDetailsScreen(),
                arguments: products[index],
              ),
              child: MyProductTileContainer(
                title: products[index]['title'],
                category: products[index]['category'],
                image: products[index]['image'],
                price: "\$${products[index]['price'].toString()}",
                count: "Available: ${products[index]['rating']["count"]}",
              ),
            ),
          );
        },
      ),
    );
  }
}
