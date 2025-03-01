import 'package:flutter/material.dart';

import '../../configs/routes/route_names.dart';
import '../../configs/routes/routes.dart';
import '../../configs/themes/themes.dart';

void main() {
  runApp(const IDCardApp());
}

class IDCardApp extends StatelessWidget {
  const IDCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ID Card Generator',
      theme: AppTheme.lightTheme,
      initialRoute: RouteNames.registrationscreen, // Initial screen
      routes: AppRoutes.getRoutes(),
    );
  }
}
