import 'package:flutter/material.dart';

import '../../widgets/background_screen.dart';
import '../../widgets/input_field.dart';
import '../../widgets/custom_button.dart';
import '../../configs/colors/app_colors.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});
  final String? text = '';
  final String? navigationPath = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Login', style: TextStyle(color: AppColors.text)),
        backgroundColor: AppColors.primary,
      ),
      body: CurvedBackground(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputFields(
                obtext: true,
                text: 'Enter Roll Number',
                action: TextInputAction.next,
                data: Icons.person,
              ),
              const SizedBox(height: 16.0),
              const InputFields(
                obtext: true,
                text: 'Password',
                action: TextInputAction.done,
                data: Icons.lock,
              ),
              const SizedBox(height: 20.0),
              const CustomButton(
                  buttontext: 'Login', pathText: 'applicationForm')
            ],
          ),
        ),
      ),
    );
  }
}
