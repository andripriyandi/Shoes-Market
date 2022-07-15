import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/button/button_primary.dart';
import 'package:shamo/widgets/input/custom_input_text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameTextController = TextEditingController();
    final TextEditingController emailTextController = TextEditingController();
    final TextEditingController usernameTextController =
        TextEditingController();
    final TextEditingController passwordTextController =
        TextEditingController();

    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: primaryTextStyle.copyWith(
                  fontSize: 24.sp, fontWeight: semiBold),
            ),
            const SizedBox(height: 2),
            Text(
              'Register and Happy Shopping',
              style: subtitleTextStyle,
            ),
          ],
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(top: 50, bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account? ',
              style: subtitleTextStyle.copyWith(
                  fontSize: 12.sp, fontWeight: regular),
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Text(
                'Sign In',
                style: purpleTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: medium,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              CustomInputText(
                title: 'Full Name',
                pathIcon: 'assets/icons/icon_name.png',
                controller: nameTextController,
                hintText: 'Your Full Name',
                marginTop: 50,
              ),
              CustomInputText(
                title: 'Username',
                pathIcon: 'assets/icons/icon_username.png',
                controller: usernameTextController,
                hintText: 'Your Username',
                marginTop: 20,
              ),
              CustomInputText(
                title: 'Email Address',
                pathIcon: 'assets/icons/icon_email.png',
                controller: emailTextController,
                hintText: 'Your Email Address',
                marginTop: 20,
              ),
              CustomInputText(
                title: 'Password',
                pathIcon: 'assets/icons/icon_password.png',
                controller: passwordTextController,
                hintText: 'Your Password',
                marginTop: 20,
              ),
              ButtonPrimary(
                title: 'Sign Up',
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                marginTop: 30,
              ),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
