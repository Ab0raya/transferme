import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transferme/controller/profile_controller.dart';
import 'package:transferme/utils/colors.dart';
import 'package:transferme/utils/size_config.dart';
import 'package:transferme/utils/styles.dart';
import 'package:transferme/utils/widgets/custom_button.dart';
import 'package:transferme/utils/widgets/underline_text_field.dart';

import '../../../utils/widgets/global_appbar.dart';

class ProfileViewBody extends StatelessWidget {
  ProfileViewBody({super.key});

  final profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GlobalAppbar(
              title: "Profile",
              back: () => Get.back(),
            ),
            (screenHeight(context) * 0.05).sh,
            Text(
              'Please set up your profile',
              style: AppStyles.textStyle19.copyWith(
                color: AppColors.blackColor.withOpacity(0.2),
              ),
            ),
            (screenHeight(context) * 0.02).sh,
            Obx(
              () => MaterialButton(
                onPressed: () =>
                    profileController.showImageSourceBottomSheet(context),
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: AppColors.accentColor,
                  backgroundImage: profileController.selectedImage.value != null
                      ? FileImage(
                          File(profileController.selectedImage.value!.path))
                      : null,
                  child: profileController.selectedImage.value == null
                      ? const Icon(
                          Icons.upload,
                          color: AppColors.whiteColor,
                          size: 40,
                        )
                      : null,
                ),
              ),
            ),
            (screenHeight(context) * 0.02).sh,
            UnderlinedTextField(
                label: 'First Name',
                controller: profileController.firstNameController),
            UnderlinedTextField(
                label: 'Last Name',
                controller: profileController.lastNameController),
            UnderlinedTextField(
                label: 'Phone Number',
                controller: profileController.phoneNumberController),
            (screenHeight(context) * 0.1).sh,
            CustomButton(
              onTap: ()=>profileController.setProfileData(),
              label: "Set",
            ),
          ],
        ),
      ),
    );
  }
}
