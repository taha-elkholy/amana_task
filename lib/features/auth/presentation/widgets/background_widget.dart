import 'package:amana_task/core/utils/app_assets.dart';
import 'package:amana_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-45.w, 0),
      child: Image.asset(
        AppAssets.background,
        width: double.infinity,
        height: double.infinity,
        color: AppColors.primary.withOpacity(0.1),
      ),
    );
  }
}
