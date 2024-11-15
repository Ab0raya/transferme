import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transferme/utils/colors.dart';
import 'package:transferme/utils/styles.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({
    super.key,
    required this.currentBalance,
  });

  final double currentBalance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Text(
            'Current Balance',
            style: AppStyles.textStyle24.copyWith(
              color: AppColors.blackColor.withOpacity(0.2),
            ),
          ),
          Text(
            '$currentBalance',
            style: AppStyles.textStyle40.copyWith(
                color: AppColors.accentColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
