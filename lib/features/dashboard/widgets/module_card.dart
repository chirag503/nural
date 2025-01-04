import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nural/core/constant/app_colors.dart';
import 'package:nural/core/constant/text_styles.dart';

class ModuleCard extends StatelessWidget {
  final String title;
  final bool isHorizontalCard;
  final void Function()? onTap;
  const ModuleCard({
    super.key,
    required this.title,
    this.isHorizontalCard = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final list = [
      Padding(
        padding: EdgeInsets.only(
          left: isHorizontalCard ? 16.w : 0,
        ),
        child: Text(
          title,
          style: AppTextStyles.f16W700.copyWith(
            color: AppColors.primary,
          ),
        ),
      ),
      Container(
        height: 80.w,
        width: 80.w,
        color: AppColors.ceil,
      )
    ];
    return InkWell(
      onTap: onTap,
      child: Container(
        width: isHorizontalCard
            ? MediaQuery.sizeOf(context).width
            : (MediaQuery.sizeOf(context).width / 2) - 16.w,
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 32.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.lavender,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isHorizontalCard
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: list,
                )
              : Column(
                  spacing: 8,
                  children: list,
                ),
        ),
      ),
    );
  }
}
