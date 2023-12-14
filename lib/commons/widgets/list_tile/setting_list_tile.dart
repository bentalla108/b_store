import 'package:b_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BSettingMenuTile extends StatelessWidget {
  final IconData? icon;

  final Widget? trailing;

  final String title;
  final String subtitle;

  final VoidCallback? onTap;

  const BSettingMenuTile(
      {super.key,
      this.icon,
      this.trailing,
      required this.title,
      required this.onTap,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: BColors.primary,
      ),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
