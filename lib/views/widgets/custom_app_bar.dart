import 'package:avialdo_solutions/data/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;

  const CustomAppBar(
      {super.key, required this.title, this.showBackButton = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleTextStyle: GoogleFonts.poppins(
          textStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600)),
      backgroundColor: AppColors.kGreyColor,
      foregroundColor: AppColors.kWhiteColor,
      centerTitle: true,
      title: Text(title),
      leading: showBackButton
          ? IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios_new),
            )
          : null,
      actions: [
        const Icon(Icons.shopping_cart),
        SizedBox(width: 10.w),
        Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: const Icon(Icons.more_vert),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
