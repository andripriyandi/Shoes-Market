import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamo/theme.dart';

class ButtonPrimary extends StatelessWidget {
  final String title;
  final Function() onTap;
  final Color? color;
  final double? marginTop;
  const ButtonPrimary({
    Key? key,
    required this.title,
    required this.onTap,
    this.color,
    this.marginTop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      margin: EdgeInsets.only(top: marginTop ?? 30),
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          backgroundColor: color ?? primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          title,
          style: primaryTextStyle.copyWith(
            fontSize: 16.sp,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
