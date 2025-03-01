import 'package:flutter/material.dart';
import 'package:idcard/widgets/custom_button.dart';

import '../../configs/colors/app_colors.dart';

class RegisterCard extends StatelessWidget {
  final String? text;
  final String? loginPathText;
  final String? signupPathText;
  final IconData? iconData;
  const RegisterCard({super.key,this.text,this.loginPathText,this.signupPathText,this.iconData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 250,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                iconData!,
                size: 50,
                color: AppColors.primary,
              ),
              Text(
                text!,
                style: const TextStyle(color: AppColors.primary, fontSize: 20),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(buttontext: 'login', pathText: loginPathText!),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomButton(buttontext: 'signup', pathText: signupPathText!),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
