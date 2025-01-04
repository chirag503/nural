import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nural/core/constant/app_colors.dart';
import 'package:nural/core/constant/text_styles.dart';

class DashboardButton extends StatelessWidget {
  const DashboardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.w,
        vertical: 8.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.forestGreen,
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 4.w,
          children: [
            Text(
              "DASHBOARD",
              style: AppTextStyles.f12W700.copyWith(
                color: AppColors.forestGreen,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: AppColors.forestGreen,
              size: 24,
            )
          ],
        ),
      ),
    );
  }
}
