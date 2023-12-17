import 'package:b_store/commons/widgets/container/circular_container.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class BChoiceChip extends StatelessWidget {
  const BChoiceChip({
    super.key,
    this.onSelected,
    required this.text,
    required this.selected,
  });

  final void Function(bool)? onSelected;
  final String text;

  final bool selected;

  @override
  Widget build(BuildContext context) {
    final isColor = BHelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text), // OK
      shape: isColor ? const CircleBorder() : null, //OK
      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      padding: isColor ? const EdgeInsets.all(0) : null,
      selected: selected,
      onSelected: onSelected,

      avatar: isColor
          ? BCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: BHelperFunctions.getColor(text)!,
            )
          : null,
      labelStyle: TextStyle(color: selected ? BColors.white : null),
      backgroundColor: isColor ? BHelperFunctions.getColor(text)! : null,
      selectedColor: isColor ? BHelperFunctions.getColor(text)! : null,
    );
  }
}
