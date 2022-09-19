import 'package:arm_chats/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        text,
        style:  TextStyle(
          fontSize: 14.sp,
          color: CustomColors.whiteColor,
          fontWeight: FontWeight.w500
        ),
      ),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: CustomColors.primaryColor,
        minimumSize: const Size(double.infinity, 50),
      ),
    );
  }
}
