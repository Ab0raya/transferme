import 'package:flutter/material.dart';
import 'package:transferme/utils/colors.dart';
import 'package:transferme/utils/size_config.dart';
import 'package:transferme/utils/styles.dart';

class SideTitle extends StatelessWidget {
  const SideTitle({
    super.key,
    required this.title,
    required this.actionText,
    required this.onPressActionText,
  });

  final String title;
  final String actionText;
  final Function() onPressActionText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 30, vertical: screenHeight(context) * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppStyles.textStyle24
                .copyWith(color: AppColors.blackColor.withOpacity(0.4)),
          ),
          TextButton(
            onPressed: onPressActionText,
            child: Text(
              actionText,
              style:
              AppStyles.textStyle19.copyWith(color: AppColors.accentColor),
            ),
          )
        ],
      ),
    );
  }
}
