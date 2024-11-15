import 'package:flutter/material.dart';
import 'package:transferme/view/onbaording_view/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: OnboardingViewBody(),
    );
  }
}
