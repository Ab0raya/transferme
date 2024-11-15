import 'package:flutter/material.dart';
import 'package:transferme/view/profile_view/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: ProfileViewBody()),
    );
  }
}
