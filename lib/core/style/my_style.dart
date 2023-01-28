import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


import 'my_colors.dart';
abstract class AppStyle {
  static TextStyle myStyle = GoogleFonts.aBeeZee(
      textStyle: TextStyle(
        color: AppColor.white,
        fontSize: 40.sp,
        fontWeight: FontWeight.w700,
      ));
}

