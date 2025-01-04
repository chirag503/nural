import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nural/core/constant/app_colors.dart';
import 'package:nural/core/constant/image_path.dart';
import 'package:nural/core/constant/text_styles.dart';
import 'package:nural/core/route/app_router.dart';
import 'package:nural/features/common/widgets/common_app_bar.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        Future.delayed(Duration(seconds: 3)).then((v) {
          if (mounted) {
            context.replaceRoute(const DashboardRoute());
          }
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: CommonAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60.h,
            ),
            Text(
              'Good Afternoon',
              style: AppTextStyles.f24W400.copyWith(
                color: AppColors.crayola,
              ),
            ),
            SizedBox(
              height: 56.h,
            ),
            CircleAvatar(
              radius: 80.r,
              backgroundColor: AppColors.celeste,
            ),
            SizedBox(
              height: 27.h,
            ),
            Text(
              'Name\nSurname',
              textAlign: TextAlign.center,
              style: AppTextStyles.f24W700.copyWith(
                color: AppColors.darkTurquoise,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'ISP',
              style: AppTextStyles.f24W400.copyWith(
                color: AppColors.celeste,
              ),
            ),
            Spacer(),
            Text(
              'Powered by',
              style: AppTextStyles.f12W400.copyWith(
                color: Colors.white,
              ),
            ),
            Image.asset(
              ImagePath.icNuralSplashLogo,
            ),
            SizedBox(
              height: 57.h,
            )
          ],
        ),
      ),
    );
  }
}
