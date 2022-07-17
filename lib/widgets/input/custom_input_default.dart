import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamo/theme.dart';

class CustomInputDefault extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String hintText;
  final double marginTop;
  final TextInputType keyboardType;

  const CustomInputDefault({
    Key? key,
    required this.controller,
    required this.title,
    this.hintText = '',
    this.marginTop = 0,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: marginTop,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: secondaryTextStyle.copyWith(
              fontSize: 13.sp,
            ),
          ),
          TextFormField(
            style: primaryTextStyle,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
              
              hintStyle: primaryTextStyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: subtitleColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
