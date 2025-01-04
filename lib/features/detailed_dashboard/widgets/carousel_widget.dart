import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nural/core/constant/app_colors.dart';
import 'package:nural/core/constant/text_styles.dart';
import 'package:nural/features/detailed_dashboard/controller/carsousel_getx_controller.dart';
import 'package:nural/features/detailed_dashboard/widgets/carousel_indicator.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final CarsouselGetxController _controller =
      Get.put(CarsouselGetxController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 9.5.h,
            bottom: 9.5.h,
          ),
          child: Text(
            "Bulletin",
            style: AppTextStyles.f14W700.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CarouselSlider(
              items: List.generate(
                4,
                (index) => Container(
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.silver,
                  ),
                ),
              ),
              options: CarouselOptions(
                autoPlay: true,
                initialPage: 0,
                height: 160.h,
                enlargeFactor: 0.1,
                autoPlayCurve: Curves.linear,
                enlargeCenterPage: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  _controller.updateIndex(index);
                },
              ),
            ),
            Obx(
              () {
                return CarouselIndicator(
                  currentIndex: _controller.currentIndex.value,
                );
              },
            )
          ],
        )
      ],
    );
  }
}
