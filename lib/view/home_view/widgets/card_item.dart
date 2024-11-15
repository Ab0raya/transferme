import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transferme/utils/colors.dart';
import 'package:transferme/utils/size_config.dart';
import 'package:transferme/utils/styles.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.visaName,
    required this.visaNumber,
    required this.visaBalance,
    required this.visaImage,
  });

  final String visaName;
  final String visaImage;
  final int visaNumber;
  final double visaBalance;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context) * 0.85,
      height: screenHeight(context) * 0.09,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.accentColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(visaImage),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'VISA',
                style: AppStyles.textStyle19.copyWith(
                  color: AppColors.blackColor,
                ),
              ),
              Text(
                '$visaName   • $visaNumber',
                style: AppStyles.textStyle19.copyWith(
                  color: AppColors.blackColor.withOpacity(0.2),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '\$ $visaBalance',
                style: AppStyles.textStyle19.copyWith(
                  color: AppColors.accentColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}