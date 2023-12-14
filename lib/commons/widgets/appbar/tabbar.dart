import 'package:b_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class BTabBar extends StatelessWidget implements PreferredSizeWidget {
  const BTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final bool darkMode = BHelperFunctions.isDarkMode(context);

    return Material(
      color: darkMode ? BColors.dark : BColors.white,
      child: TabBar(
          tabAlignment: TabAlignment.start,
          indicatorColor: BColors.primary,
          isScrollable: true,
          unselectedLabelColor: BColors.darkGrey,
          labelColor: darkMode ? BColors.white : BColors.primary,
          tabs: tabs),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(BDeviceUtils.getAppBarHeight());
}
