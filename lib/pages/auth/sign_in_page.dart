import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/button/button_primary.dart';
import 'package:shamo/widgets/input/custom_input_text.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailTextController = TextEditingController();
    final TextEditingController passwordTextController =
        TextEditingController();

    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: primaryTextStyle.copyWith(
                  fontSize: 24.sp, fontWeight: semiBold),
            ),
            const SizedBox(height: 2),
            Text(
              'Sign In to Continue',
              style: subtitleTextStyle,
            ),
          ],
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account? ',
              style: subtitleTextStyle.copyWith(
                  fontSize: 12.sp, fontWeight: regular),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Sign Up',
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              CustomInputText(
                title: 'Email',
                pathIcon: 'assets/icons/icon_email.png',
                controller: emailTextController,
                hintText: 'Your Email Address',
                marginTop: 70,
              ),
              CustomInputText(
                title: 'Password',
                pathIcon: 'assets/icons/icon_password.png',
                controller: passwordTextController,
                hintText: 'Your Email Address',
                obscureText: true,
                marginTop: 20,
              ),
              ButtonPrimary(
                title: 'Sign Up',
                onTap: () {},
                marginTop: 30,
              ),
              const Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
