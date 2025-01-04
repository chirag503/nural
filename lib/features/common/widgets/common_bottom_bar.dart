import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nural/core/constant/app_colors.dart';
import 'package:nural/core/constant/image_path.dart';
import 'package:nural/core/constant/text_styles.dart';

// common bottom bar
class CommonBottomBar extends StatelessWidget {
  const CommonBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 80,
            spreadRadius: 80,
          )
        ],
      ),
      child: Row(
        spacing: 6.w,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'POWERED BY',
            style: AppTextStyles.f12W400.copyWith(
              color: AppColors.primary,
            ),
          ),
          Image.asset(
            ImagePath.icNuralLogo,
          )
        ],
      ),
    );
  }
}
