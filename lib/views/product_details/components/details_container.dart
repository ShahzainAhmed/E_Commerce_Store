import 'package:avialdo_solutions/data/constants/app_colors.dart';
import 'package:avialdo_solutions/data/constants/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDetailsContainer extends StatefulWidget {
  final String title;
  final String category;
  final String description;
  final double rating;
  final String price;

  const MyDetailsContainer({
    super.key,
    required this.title,
    required this.category,
    required this.description,
    required this.rating,
    required this.price,
  });

  @override
  State<MyDetailsContainer> createState() => _MyDetailsContainerState();
}

class _MyDetailsContainerState extends State<MyDetailsContainer> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.kGreyColor.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title, style: AppTypography.kBold18),
          Text(widget.category, style: AppTypography.kBold14),
          SizedBox(height: 10.h),
          Text(
            widget.description,
            style: AppTypography.kMedium12,
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 10.h),
          RatingBar.builder(
            initialRating: widget.rating,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 24.0,
            itemBuilder: (context, _) =>
                const Icon(Icons.star, color: AppColors.kBlackColor),
            onRatingUpdate: (rating) {},
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.price, style: AppTypography.kBold24),
              IconButton(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                iconSize: 35,
                icon: isFavorite
                    ? const Icon(Icons.favorite, color: AppColors.kRedColor)
                    : const Icon(Icons.favorite_outline),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          const Icon(Icons.shopping_cart_outlined, size: 45),
        ],
      ),
    );
  }
}
