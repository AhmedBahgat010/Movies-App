import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'my_colors.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColor.black,
  platform: TargetPlatform.iOS,
  primaryColor: AppColor.white,
  primarySwatch: Colors.green,
  appBarTheme:  AppBarTheme(

      backgroundColor: AppColor.black,
      toolbarHeight: 80.h,
      elevation: 0,

       centerTitle: false,
      iconTheme:  IconThemeData(color: AppColor.white,size: 40.sh),
      titleTextStyle:  TextStyle(
        color: AppColor.white,
        fontSize: 40.sh,
        fontWeight: FontWeight.w600,
     ),
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.black,
          statusBarIconBrightness: Brightness.light)),
);
