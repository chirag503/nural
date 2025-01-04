import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nural/core/constant/app_colors.dart';
import 'package:nural/core/constant/text_styles.dart';
import 'package:nural/core/route/app_router.dart';
import 'package:nural/features/dashboard/widgets/module_card.dart';

class ModuleListviewWidget extends StatelessWidget {
  const ModuleListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 9.5.h, bottom: 9.5.h),
            child: Text(
              "Page X",
              style: AppTextStyles.f14W700.copyWith(
                color: AppColors.primary,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.only(
                bottom: 20.h,
              ),
              itemBuilder: (context, index) => ModuleCard(
                title: 'Module 1',
                onTap: () {
                  context.pushRoute(
                    DetailDashboardRoute(),
                  );
                },
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 8.h,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
