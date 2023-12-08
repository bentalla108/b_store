import 'package:flutter/material.dart';

class BSectionHeadline extends StatelessWidget {
  const BSectionHeadline({
    super.key,
    required this.title,
    this.buttonTitle = 'View All',
    this.textColor,
    this.showActionButton = true,
    this.onPressed,
  });

  final String title;
  final String buttonTitle;
  final Color? textColor;
  final bool showActionButton;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
