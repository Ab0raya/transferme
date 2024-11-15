import 'package:flutter/material.dart';

import '../../../model/onboarding_model.dart';
import '../../../utils/size_config.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    super.key,
    required this.data,
  });

  final OnboardingModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: screenWidth(context) * 0.8,
          height: screenHeight(context) * 0.4,
          child: Image.asset(data.imagePath),
        ),
        const SizedBox(height: 20),
        Text(
          data.title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            data.desc,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
