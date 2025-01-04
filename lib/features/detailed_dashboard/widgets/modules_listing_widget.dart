import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nural/core/constant/app_colors.dart';
import 'package:nural/core/constant/text_styles.dart';
import 'package:nural/features/dashboard/widgets/module_card.dart';

class ModulesListingWidget extends StatelessWidget {
  const ModulesListingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final moduleList = [
      "Attendance",
      "Sales",
      "Inventory",
      "Competition",
      "Merchandising",
      "Pre-booking",
      "L&D",
      "L&D"
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 17.5.h,
            bottom: 9.5.h,
          ),
          child: Text(
            "Modules",
            style: AppTextStyles.f14W700.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
        ModuleCard(
          title: "Dashboard",
        ),
        SizedBox(
          height: 8.h,
        ),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: List.generate(
            moduleList.length,
            (index) => ModuleCard(
              title: moduleList[index],
              isHorizontalCard: false,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
