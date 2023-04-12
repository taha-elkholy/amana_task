import 'package:amana_task/core/utils/app_assets.dart';
import 'package:amana_task/core/utils/app_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppAssets.logo_1),
        8.0.w.appSpace,
        SvgPicture.asset(AppAssets.logo_2),
      ],
    );
  }
}
