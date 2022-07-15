import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamo/theme.dart';

class CustomInputText extends StatelessWidget {
  final String title;
  final String pathIcon;
  final TextEditingController controller;
  final bool? obscureText;
  final String? hintText;
  final double? marginTop;
  const CustomInputText({
    Key? key,
    required this.title,
    required this.pathIcon,
    required this.controller,
    this.obscureText,
    this.hintText,
    this.marginTop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop ?? 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: primaryTextStyle.copyWith(
              fontSize: 19.sp,
              fontWeight: medium,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 50.h,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: backgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    pathIcon,
                    width: 17,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      obscureText: obscureText ?? false,
                      controller: controller,
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: hintText,
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
