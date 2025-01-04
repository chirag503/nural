import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nural/core/constant/app_colors.dart';
import 'package:nural/features/common/widgets/common_bottom_bar.dart';
import 'package:nural/features/common/widgets/common_app_bar.dart';
import 'package:nural/features/dashboard/widgets/module_listview_widget.dart';
import 'package:nural/features/dashboard/widgets/top_module.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(
        leading: Padding(
          padding: EdgeInsets.only(
            left: 12.w,
          ),
          child: Icon(
            Icons.notifications_rounded,
            color: AppColors.primary,
            size: 24,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 12.w,
            ),
            child: Icon(
              Icons.more_vert_rounded,
              color: AppColors.primary,
              size: 24,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
        ),
        child: Column(
          children: [
            ProfileOverviewWidget(),
            ModuleListviewWidget(),
            CommonBottomBar(),
          ],
        ),
      ),
    );
  }
}
