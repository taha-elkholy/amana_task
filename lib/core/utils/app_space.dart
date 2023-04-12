import 'package:flutter/cupertino.dart';

extension AppSpace on double {
  SizedBox get appSpace => SizedBox(
        width: this,
        height: this,
      );
}
