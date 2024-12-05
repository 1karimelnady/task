import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/component/custom_search.dart';
import 'package:task/core/constants/app_colors.dart';

import '../../../../core/constants/app_images.dart';
import '../widgets/filter_widget.dart';
import '../widgets/reservation_component.dart';

import '../widgets/sort_widget.dart';

class ReservationScreen extends StatelessWidget {
  const ReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: 1.sw,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade400, blurRadius: 1.0)
                ],
                color: AppColors.whiteColor,
                borderRadius: BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(16.r),
                  bottomStart: Radius.circular(16.r),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.list,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Reservations",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(AppImages.notification))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: CustomSearch()),
                    SizedBox(width: 4.w),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(16.0),
                            ),
                          ),
                          builder: (context) {
                            return SortBuildWidget(context: context);
                          },
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(12.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border:
                              Border.all(color: AppColors.lightPrimaryColor),
                        ),
                        child: const Icon(
                          Icons.swap_vert,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(width: 4.w),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(16.0),
                            ),
                          ),
                          builder: (context) {
                            return FilterBuildWidget(context: context);
                          },
                        );
                      },
                      child: Container(
                          padding: EdgeInsets.all(16.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border:
                                Border.all(color: AppColors.lightPrimaryColor),
                          ),
                          child: SvgPicture.asset(
                            AppImages.filter,
                          )),
                    ),
                  ],
                ),
                25.verticalSpace,
                const ReservationComponent(),
                22.verticalSpace,
                const ReservationComponent(
                  isrespons: 1,
                ),
                22.verticalSpace,
                const ReservationComponent(
                  isrespons: 2,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.leads),
            label: 'leads',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.units),
            label: 'Units',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.reservation),
            label: 'Reservation',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.account),
            label: 'Account',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: 3,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: const Color(0xffA2A7AF),
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
