import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';

class SortBuildWidget extends StatelessWidget {
  const SortBuildWidget({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    bool isReserved = false;
    bool isNotReserved = false;
    bool newest = false;
    bool oldest = false;
    double minPrice = 1.0;
    double maxPrice = 8.0;

    return StatefulBuilder(
      builder: (context, setState) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sort By:",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryColor),
              ),
              const SizedBox(height: 16),
              ExpansionTile(
                title: const Text("Status"),
                children: [
                  CheckboxListTile(
                    title: const Text("Reserved"),
                    value: isReserved,
                    activeColor: AppColors.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        isReserved = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text("Not Reserved"),
                    value: isNotReserved,
                    activeColor: AppColors.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        isNotReserved = value!;
                      });
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text("Price"),
                children: [
                  RangeSlider(
                    values: RangeValues(minPrice, maxPrice),
                    min: 0.0,
                    max: 10.0,
                    divisions: 7,
                    activeColor: const Color(0xff6666FF),
                    labels: RangeLabels(
                      '${minPrice.toInt()}M',
                      '${maxPrice.toInt()}M',
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        minPrice = values.start;
                        maxPrice = values.end;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${minPrice.toInt()}M'),
                      Text('${maxPrice.toInt()}M'),
                    ],
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text("Date"),
                children: [
                  CheckboxListTile(
                    title: const Text("Newest"),
                    value: newest,
                    activeColor: AppColors.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        newest = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    activeColor: AppColors.primaryColor,
                    title: const Text("Oldest"),
                    value: oldest,
                    onChanged: (value) {
                      setState(() {
                        oldest = value!;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 1.sw,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: const Color(0xff6666FF),
                  ),
                  onPressed: () {},
                  child: const Text("Show Results"),
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Reset All",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          color: const Color(0xff494949)),
                    )),
              )
            ],
          ),
        );
      },
    );
  }
}
