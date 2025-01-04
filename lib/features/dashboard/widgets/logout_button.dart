import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nural/core/constant/app_colors.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 8.w,
        top: 8.h,
        bottom: 16.h,
      ),
      height: 24.h,
      width: 24.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.darkTurquoise,
      ),
      child: Center(
        child: Icon(
          Icons.logout_sharp,
          color: AppColors.forestGreen,
          size: 16,
        ),
      ),
    );
  }
}
