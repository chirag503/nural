import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nural/core/constant/app_colors.dart';

class CarouselIndicator extends StatelessWidget {
  final int currentIndex;
  const CarouselIndicator({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 12.h,
        right: 12.w,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          4,
          (index) => Container(
            margin: EdgeInsets.symmetric(
              horizontal: 4.w,
            ),
            height: 8.h,
            width: 8.w,
            decoration: BoxDecoration(
              color:
                  currentIndex == index ? AppColors.indigo : AppColors.lavender,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
