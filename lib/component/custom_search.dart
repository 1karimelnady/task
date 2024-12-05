import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/constants/app_colors.dart';

import '../core/constants/app_images.dart';

class CustomSearch extends StatelessWidget {
  TextEditingController? controller;
  Function? onEditingComplete;
  void Function(String)? onChanged;
  CustomSearch({
    super.key,
    this.controller,
    this.onEditingComplete,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onFieldSubmitted: (value) {
        if (onEditingComplete != null) {
          onEditingComplete!();
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: 'Search..',
        contentPadding: EdgeInsetsDirectional.only(start: 16.w),
        fillColor: AppColors.whiteColor,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 14.sp,
        ),
        filled: true,
        suffixIcon: IconButton(
          icon: SvgPicture.asset(
            AppImages.search,
            width: 20.w,
            height: 20.h,
          ),
          onPressed: () => onEditingComplete!(),
        ),
        prefixIconConstraints: BoxConstraints(maxWidth: 50.w),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: AppColors.lightPrimaryColor,
            )),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: AppColors.primaryColor,
        )),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9.r),
          borderSide: BorderSide(
            color: AppColors.primaryColor.withOpacity(0.4),
          ),
        ),
      ),
    );
  }
}
