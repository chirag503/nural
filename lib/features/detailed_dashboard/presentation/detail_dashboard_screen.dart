import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nural/core/constant/app_colors.dart';
import 'package:nural/features/common/widgets/common_bottom_bar.dart';
import 'package:nural/features/common/widgets/common_app_bar.dart';
import 'package:nural/features/dashboard/widgets/top_module.dart';
import 'package:nural/features/detailed_dashboard/widgets/carousel_widget.dart';
import 'package:nural/features/detailed_dashboard/widgets/modules_listing_widget.dart';

@RoutePage()
class DetailDashboardScreen extends StatelessWidget {
  const DetailDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(
        centerTitle: false,
        actions: [
          Icon(
            Icons.notifications_rounded,
            color: AppColors.primary,
            size: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileOverviewWidget(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CarouselWidget(),
                    ModulesListingWidget(),
                  ],
                ),
              ),
            ),
            CommonBottomBar()
          ],
        ),
      ),
    );
  }
}
