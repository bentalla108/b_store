import 'package:flutter/material.dart';

class BTextProductTitle extends StatelessWidget {
  const BTextProductTitle({
    super.key,
    this.smallSize = false,
    this.textAlign = TextAlign.center,
    this.maxLines = 2,
    required this.title,
  });

  final bool smallSize;
  final TextAlign textAlign;
  final int maxLines;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      textAlign: TextAlign.center,
    );
  }
}
