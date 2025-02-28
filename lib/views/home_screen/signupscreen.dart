import 'package:flutter/material.dart';
import 'package:idcard/widgets/background_screen.dart';

import '../../configs/colors/app_colors.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text('Signup', style: TextStyle(color: AppColors.text)),
        backgroundColor: AppColors.primary,
      ),
      body: CurvedBackground(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter Roll Number',
                  filled: true,
                  fillColor: AppColors.button,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  prefixIcon: Icon(Icons.person, color: AppColors.primary),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent), // Removes blue border
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary, width: 2.0), // Custom focus color
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Create New Password',
                  filled: true,
                  fillColor: AppColors.button,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  prefixIcon: Icon(Icons.lock, color: AppColors.primary),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent), // Removes blue border
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary, width: 2.0), // Custom focus color
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  filled: true,
                  fillColor: AppColors.button,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  prefixIcon: Icon(Icons.lock, color: AppColors.primary),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent), // Removes blue border
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary, width: 2.0), // Custom focus color
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/registrationscreen');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.button,
                ),
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
