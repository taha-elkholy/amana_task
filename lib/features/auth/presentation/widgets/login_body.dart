import 'package:amana_task/core/presentation/widgets/custom_elevated_button.dart';
import 'package:amana_task/core/utils/app_colors.dart';
import 'package:amana_task/core/utils/app_space.dart';
import 'package:amana_task/core/utils/app_strings.dart';
import 'package:amana_task/features/auth/presentation/widgets/login_widget.dart';
import 'package:amana_task/features/auth/presentation/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.all(32.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const LogoWidget(),
          24.0.h.appSpace,
          const LoginWidget(),
          24.0.h.appSpace,
          CustomElevatedButton(
            label: AppStrings.reference,
            color: AppColors.lightGrey,
            onPressed: () {},
          ),
          16.0.h.appSpace,
          CustomElevatedButton(
            label: AppStrings.companies,
            color: AppColors.lightGrey,
            onPressed: () {},
          ),
          16.0.h.appSpace,
          CustomElevatedButton(
            label: AppStrings.kfou,
            color: AppColors.lightGrey,
            onPressed: () {},
          ),
          16.0.h.appSpace,
          CustomElevatedButton(
            label: AppStrings.techSupport,
            color: AppColors.lightGrey,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
