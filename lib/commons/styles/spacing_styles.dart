import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class BSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: BSizes.appBarHeight,
    bottom: BSizes.defaultSpace,
    left: BSizes.defaultSpace,
    right: BSizes.defaultSpace,
  );
}
