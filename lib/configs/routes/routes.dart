import 'package:flutter/material.dart';
import 'package:idcard/views/home_screen/fac_signupscreen.dart';
// import 'package:idcard/views/home_screen/home_screen.dart';
import 'package:idcard/views/registration/registrationscreen.dart';
import '../../views/application_form/application_form_screen.dart';
import '../../views/approval/hod_approval_screen.dart';
import '../../views/home_screen/loginscreen.dart';
import '../../views/home_screen/signupscreen.dart';
import '../../views/payment/payment_screen.dart';
import '../../views/receipts/fee_receipt_screen.dart';
import '../../views/tracking/status_tracking_screen.dart';
import '../routes/route_names.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      RouteNames.registrationscreen:(context)=>Registrationscreen(),
      // RouteNames.homescreen:(context)=>HomeScreen(),
      RouteNames.applicationForm: (context) => ApplicationFormScreen(),
      RouteNames.hodApproval: (context) => HODApprovalScreen(),
      RouteNames.payment: (context) => PaymentScreen(),
      RouteNames.tracking: (context) => StatusTrackingScreen(),
      RouteNames.feeReceipt: (context) => FeeReceiptScreen(),
      RouteNames.login:(context)=>Loginscreen(),
      RouteNames.signup:(context)=>Signupscreen(),
      RouteNames.facsignup:(context)=>FacSignupscreen(),
    };
  }
}
