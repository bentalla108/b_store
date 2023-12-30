import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BAnimationLoader extends StatelessWidget {
  const BAnimationLoader(
      {super.key,
      required this.animation,
      required this.text,
      this.showAction = false,
      this.onActionPressed,
      this.actionText});

  final String animation;
  final String text;
  final bool showAction;
  final VoidCallback? onActionPressed;
  final String? actionText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,
              width: MediaQuery.of(context).size.width * 0.8),
          const SizedBox(
            height: BSizes.defaultSpace,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: BSizes.defaultSpace,
          ),
          showAction
              ? SizedBox(
                  width: 230,
                  child: OutlinedButton(
                      onPressed: onActionPressed,
                      child: Text(
                        actionText!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: BColors.light),
                      )),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
