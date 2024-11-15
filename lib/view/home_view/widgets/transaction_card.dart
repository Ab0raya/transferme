import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transferme/utils/colors.dart';
import 'package:transferme/utils/size_config.dart';
import 'package:transferme/utils/styles.dart';
import 'linerChart.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.fName,
    required this.lName,
    required this.photo,
    required this.date,
    required this.isIncome,
    required this.amount,
  });

  final String fName;
  final String lName;
  final String photo;
  final String date;
  final bool isIncome;
  final double amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context) * 0.55,
      height: screenHeight(context) * 0.3,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(0.1),
            offset: const Offset(20, 30),
            spreadRadius: 1,
            blurRadius: 100,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: LineChartBackground(
                color:
                isIncome ? AppColors.secAccentColor : AppColors.accentColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundColor: AppColors.accentColor,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          isIncome
                              ? CupertinoIcons.arrow_down_left
                              : CupertinoIcons.arrow_up_right,
                          color: isIncome
                              ? AppColors.secAccentColor
                              : AppColors.accentColor,
                          size: 30,
                        ),
                        Text(
                          ' ${isIncome ? '+' : '-'} \$ $amount',
                          style: AppStyles.textStyle24.copyWith(
                            color: isIncome
                                ? AppColors.secAccentColor
                                : AppColors.accentColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: screenHeight(context) * 0.01),
                Text(
                  'From',
                  style: AppStyles.textStyle19
                      .copyWith(color: AppColors.blackColor.withOpacity(0.4)),
                ),
                Text(
                  fName,
                  style: AppStyles.textStyle24.copyWith(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  lName,
                  style: AppStyles.textStyle24.copyWith(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Text(
                  date,
                  style: AppStyles.textStyle19
                      .copyWith(color: AppColors.blackColor.withOpacity(0.4)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}