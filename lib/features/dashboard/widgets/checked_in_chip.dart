import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nural/core/constant/app_colors.dart';
import 'package:nural/core/constant/text_styles.dart';

class CheckedInChip extends StatelessWidget {
  const CheckedInChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 8.w,
        left: 10.w,
        top: 8.h,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 5.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.celeste,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 5.w,
        children: [
          CircleAvatar(
            radius: 4.r,
            backgroundColor: AppColors.forestGreen,
          ),
          Text(
            "CHECKED-IN",
            style: AppTextStyles.f10W700.copyWith(
              color: AppColors.forestGreen,
            ),
          )
        ],
      ),
    );
  }
}
