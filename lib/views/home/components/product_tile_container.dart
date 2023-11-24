import 'package:avialdo_solutions/data/constants/app_colors.dart';
import 'package:avialdo_solutions/data/constants/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProductTileContainer extends StatelessWidget {
  final String title;
  final String category;
  final String image;
  final String price;
  final String count;

  const MyProductTileContainer({
    super.key,
    required this.title,
    required this.category,
    required this.image,
    required this.price,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Hero(
              tag: image,
              child: Image(
                height: 130.h,
                fit: BoxFit.contain,
                image: NetworkImage(image),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(title, style: AppTypography.kExtraBold14),
          SizedBox(height: 5.h),
          Text(category, style: AppTypography.kMedium12),
          Text(count, style: AppTypography.kMedium12),
          SizedBox(height: 5.h),
          Text(price, style: AppTypography.kExtraBold18),
        ],
      ),
    );
  }
}
