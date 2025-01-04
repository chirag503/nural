import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nural/core/constant/app_colors.dart';

// common button
class CommonButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  const CommonButton({
    super.key,
    this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(128.w, 40.h),
        maximumSize: Size(128.w, 40.h),
        backgroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: AppColors.forestGreen,
          ),
        ),
      ),
      child: child,
    );
  }
}
