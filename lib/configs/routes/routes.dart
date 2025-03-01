import 'package:flutter/material.dart';
import '../../views/registration/registrationscreen.dart';
import '../../views/application_form/application_form_screen.dart';
import '../../views/approval/hod_approval_screen.dart';
import '../../views/authentication_screens/loginscreen.dart';
import '../../views/authentication_screens/signupscreen.dart';
import '../../views/payment/payment_screen.dart';
import '../../views/receipts/fee_receipt_screen.dart';
import '../../views/tracking/status_tracking_screen.dart';
import '../routes/route_names.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      RouteNames.registrationscreen:(context)=>const Registrationscreen(),
      // RouteNames.homescreen:(context)=>HomeScreen(),
      RouteNames.applicationForm: (context) => const ApplicationFormScreen(),
      RouteNames.hodApproval: (context) => HODApprovalScreen(),
      RouteNames.payment: (context) => PaymentScreen(),
      RouteNames.tracking: (context) => StatusTrackingScreen(),
      RouteNames.feeReceipt: (context) => FeeReceiptScreen(),
      RouteNames.login:(context)=>const Loginscreen(),
      RouteNames.signup:(context)=>const Signupscreen(),
    };
  }
}
