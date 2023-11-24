import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  // Medium
  static TextStyle kMedium12 =
      GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w500);

  //Bold
  static TextStyle kBold14 =
      GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w600);

  static TextStyle kBold18 =
      GoogleFonts.poppins(fontSize: 18.sp, fontWeight: FontWeight.w600);

  static TextStyle kBold24 =
      GoogleFonts.poppins(fontSize: 24.sp, fontWeight: FontWeight.w600);

  // Extra Bold
  static TextStyle kExtraBold14 =
      GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w700);

  static TextStyle kExtraBold18 =
      GoogleFonts.poppins(fontSize: 18.sp, fontWeight: FontWeight.w700);
}
