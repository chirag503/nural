import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nural/features/dashboard/widgets/checked_in_chip.dart';
import 'package:nural/features/dashboard/widgets/dashboard_button.dart';
import 'package:nural/features/dashboard/widgets/logout_button.dart';
import 'package:nural/features/dashboard/widgets/user_info_card.dart';

class ProfileOverviewWidget extends StatelessWidget {
  const ProfileOverviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.w,
      children: [
        UserInfoCard(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CheckedInChip(),
              LogoutButton(),
              DashboardButton(),
            ],
          ),
        )
      ],
    );
  }
}
