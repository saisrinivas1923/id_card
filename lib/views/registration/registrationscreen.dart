import 'package:flutter/material.dart';

import '../../widgets/background_screen.dart';
import 'register_card.dart';

class Registrationscreen extends StatelessWidget {
  const Registrationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ID Card"),
        centerTitle: true,
      ),
      body: const CurvedBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegisterCard(
                text: 'Student',
                loginPathText: 'login',
                signupPathText: 'signup',
                iconData: Icons.people_alt_outlined,
              ),
              SizedBox(height: 20), // Space between the cards
              RegisterCard(
                text: 'Faculty',
                loginPathText: 'login',
                signupPathText: 'facsignup',
                iconData: Icons.person,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
