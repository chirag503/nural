import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nural/core/constant/image_path.dart';

// Common app bar
class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool centerTitle;
  final List<Widget>? actions;
  final Widget? leading;

  const CommonAppBar({
    super.key,
    this.title,
    this.centerTitle = true,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      leading: leading,
      leadingWidth: 0,
      elevation: 0,
      shadowColor: Colors.white,
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      scrolledUnderElevation: 0,
      title: title != null
          ? Text(
              title!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            )
          : SvgPicture.asset(
              ImagePath.icClientLogo,
            ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
