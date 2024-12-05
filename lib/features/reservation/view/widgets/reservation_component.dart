import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';

class ReservationComponent extends StatelessWidget {
  const ReservationComponent({
    super.key,
    this.isrespons = 0,
  });
  final int isrespons;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.lightPrimaryColor),
          borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "#131256765444444",
              style: TextStyle(
                  color: const Color(0xffA2A7AF),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Row(
              children: [
                SvgPicture.asset(
                  AppImages.location,
                ),
                5.horizontalSpace,
                Text("Fifth Settlement",
                    style: TextStyle(
                        color: const Color(0xffA2A7AF),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: isrespons == 0
                        ? 60.w
                        : isrespons == 1
                            ? 20
                            : 40,
                    vertical: 12),
                backgroundColor: isrespons == 0
                    ? AppColors.whiteColor
                    : isrespons == 1
                        ? AppColors.greenColor
                        : AppColors.redColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: isrespons == 0
                          ? AppColors.primaryColor
                          : isrespons == 1
                              ? AppColors.greenColor
                              : AppColors.redColor,
                      width: 1.5),
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              child: Text(
                isrespons == 0
                    ? "New"
                    : isrespons == 1
                        ? "Contract Signed"
                        : "No Answer",
                style: TextStyle(
                    color: isrespons == 0
                        ? AppColors.primaryColor
                        : isrespons == 1
                            ? AppColors.whiteColor
                            : AppColors.whiteColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),
              ),
              onPressed: () {},
            ),
          ),
          12.verticalSpace,
          const Divider(
            color: Color(0xffE5EBF0),
            height: 10,
            thickness: 1,
          ),
          12.verticalSpace,
          Text(
            "Seller Info",
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
          ),
          7.verticalSpace,
          Text(
            "Abd El-Rahman Ahmed",
            style: TextStyle(
                color: const Color(0xffA2A7AF),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
          7.verticalSpace,
          Row(
            children: [
              SvgPicture.asset(
                AppImages.phone,
              ),
              4.horizontalSpace,
              Text(
                "01122874620",
                style: TextStyle(
                    color: const Color(0xffA2A7AF),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          12.verticalSpace,
          const Divider(
            color: Color(0xffE5EBF0),
            height: 10,
            thickness: 1,
          ),
          12.verticalSpace,
          Center(
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_down,
                    size: 40, color: Color(0xffA2A7AF))),
          )
        ],
      ),
    );
  }
}
