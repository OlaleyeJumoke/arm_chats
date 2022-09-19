

import 'package:arm_chats/presentation/auth/views/login_view.dart';
import 'package:arm_chats/presentation/auth/views/otp_view.dart';
import 'package:arm_chats/presentation/auth/views/user_data_view.dart';
import 'package:arm_chats/presentation/splash_screen.dart';

var appRoutes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginView.routeName: (context) => const LoginView(),
  OTPView.routeName: (context) =>  const OTPView(),
  UserDataView.routeName: (context) => const UserDataView(),
};
