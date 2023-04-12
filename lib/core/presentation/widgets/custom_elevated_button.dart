import 'package:amana_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      this.isLoading = false,
      this.color})
      : super(key: key);
  final String label;
  final VoidCallback onPressed;
  final bool isLoading;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : onPressed,
      child: SizedBox(
        width: double.infinity,
        height: 46.h,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color ?? AppColors.primary,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: isLoading
                ? SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(
                      color: AppColors.white,
                    ),
                  )
                : Text(
                    label,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: color == null
                              ? AppColors.white
                              : AppColors.primary,
                        ),
                  ),
          ),
        ),
      ),
    );
  }
}
