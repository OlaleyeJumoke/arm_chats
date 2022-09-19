import 'dart:async';
import 'package:arm_chats/presentation/auth/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash_screen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 10),
        () => Navigator.pushNamed(context, LoginView.routeName));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200.h),
            Container(
                height: 120.h,
                width: 240.w,
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/arm_logo.png",
                  scale: 1.5,
                )),
            const Spacer(),
            Text(
              "Tomorrow is looking good",
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
