import 'package:flutter/material.dart';
import 'package:idcard/views/registration/registrationscreen.dart';

import '../../configs/routes/route_names.dart';
import '../../configs/routes/routes.dart';
// import '../../views/home_screen/home_screen.dart';
import '../../configs/themes/themes.dart';

void main() {
  runApp(IDCardApp());
}

class IDCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ID Card Generator',
      theme: AppTheme.lightTheme,
      // initialRoute: RouteNames.registrationscreen, // Initial screen
      routes: AppRoutes.getRoutes(),
      home: Registrationscreen(),
    );
  }
}
