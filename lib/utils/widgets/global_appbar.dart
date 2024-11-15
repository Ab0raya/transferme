import 'package:flutter/material.dart';

import '../colors.dart';
import '../size_config.dart';
import '../styles.dart';

class GlobalAppbar extends StatelessWidget {
  const GlobalAppbar({
    super.key, required this.title, required this.back,
  });

  final String title;
  final Function() back;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MaterialButton(
          onPressed: back,
          child: Container(
            alignment: Alignment.center,
            width: screenWidth(context) * 0.15,
            height: screenHeight(context) * 0.04,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.accentColor,
            ),
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.whiteColor,
            ),
          ),
        ),
        (screenWidth(context) * 0.18).sw,
        Text(
          title,
          style: AppStyles.textStyle24.copyWith(
            color: AppColors.blackColor,
          ),
        ),
      ],
    );
  }
}