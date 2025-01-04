import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nural/core/constant/app_colors.dart';
import 'package:nural/core/constant/text_styles.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width / 2,
      padding: EdgeInsets.symmetric(
        vertical: 7.h,
      ),
      margin: EdgeInsets.symmetric(
        vertical: 8.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.lightCyan,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundColor: AppColors.electricBlue,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Name\nSurname',
              textAlign: TextAlign.center,
              style: AppTextStyles.f20W700.copyWith(
                color: AppColors.darkTurquoise,
              ),
            ),
            Text(
              'ISP',
              style: AppTextStyles.f10W400.copyWith(
                color: AppColors.viridianGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
