import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamo/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(
              defaultMargin,
            ),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/image_profile.png',
                    width: 64.w,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Halo, Alex',
                        style: primaryTextStyle.copyWith(
                          fontSize: 24.sp,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        '@alexindom',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/sign-in', (route) => false);
                  },
                  child: Image.asset(
                    'assets/button/button_exit.png',
                    width: 20.w,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget menuItem({required Function() onTap, required String text}) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.only(
            top: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: secondaryTextStyle.copyWith(
                  fontSize: 13.sp,
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: primaryTextColor,
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          decoration: BoxDecoration(
            color: backgroundColor3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Account',
                style: primaryTextStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: semiBold,
                ),
              ),
              menuItem(
                onTap: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
                text: 'Edit Profile',
              ),
              menuItem(
                onTap: () {},
                text: 'Your Orders',
              ),
              menuItem(
                onTap: () {},
                text: 'Help',
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'General',
                style: primaryTextStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: semiBold,
                ),
              ),
              menuItem(
                onTap: () {},
                text: 'Privacy & Policy',
              ),
              menuItem(
                onTap: () {},
                text: 'Term of Service',
              ),
              menuItem(
                onTap: () {},
                text: 'Rate App',
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
