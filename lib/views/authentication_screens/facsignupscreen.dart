import 'package:flutter/material.dart';
import 'package:idcard/widgets/background_screen.dart';
import 'package:idcard/widgets/custom_button.dart';
import 'package:idcard/widgets/input_field.dart';

import '../../configs/colors/app_colors.dart';

class FacSignupscreen extends StatelessWidget {
  const FacSignupscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: CurvedBackground(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputFields(obtext:true,text:'Enter Emp ID', action:TextInputAction.next,data: Icons.person),
              const SizedBox(height: 16.0),
              const InputFields(obtext :true,text: 'Create New Password',action: TextInputAction.next,data:
              Icons.lock),
              const SizedBox(height: 16.0),
              const InputFields(
                  obtext: true,text: 'Confirm Password',action: TextInputAction.done,data: Icons.lock),
              const SizedBox(height: 20.0),
              const CustomButton(
                  buttontext: 'Submit', pathText: 'applicationForm'),
            ],
          ),
        ),
      ),
    );
  }
}
