//import 'package:appmedicolaluz/screens/asistente/asistente.dart';
import 'package:flutter/widgets.dart';
import 'package:appmedicolaluz/screens/menu_screen/menu_screen.dart';
//import 'package:appmedicolaluz/screens/forgot_password/forgot_password_screen.dart';
import 'package:appmedicolaluz/screens/sign_in/sign_in_screen.dart';
import 'package:appmedicolaluz/screens/splash/splash_screen.dart';
import 'package:appmedicolaluz/screens/pending_teleconsultation/pending_teleconsultation_screen.dart';

//import 'screens/sign_up/sign_up_screen.dart';

final String noLoggedInitialRoute = SplashScreen.routeName;
final String loggedInitialRoute = MenuScreen.routeName;

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  //ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  //SignUpScreen.routeName: (context) => SignUpScreen(),
  //CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  MenuScreen.routeName: (context) => MenuScreen(),
  PendingTeleconsultationScreen.routeName:(context) => PendingTeleconsultationScreen(),
};
