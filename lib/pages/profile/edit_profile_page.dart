import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/input/custom_input_default.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameTextController = TextEditingController();
    final TextEditingController usernameTextController =
        TextEditingController();
    final TextEditingController emailTextController = TextEditingController();

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: primaryTextColor,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: primaryTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check,
              color: primaryColor,
            ),
          )
        ],
      );
    }

    Widget content() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        margin: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100.w,
                height: 100.h,
                margin: EdgeInsets.only(
                  top: defaultMargin,
                ),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/image_profile.png',
                    ),
                  ),
                ),
              ),
              CustomInputDefault(
                controller: nameTextController,
                title: 'Name',
                hintText: 'Alex Kindom',
                marginTop: 30,
              ),
              CustomInputDefault(
                controller: emailTextController,
                title: 'Username',
                hintText: '@alixindom',
                marginTop: 20,
              ),
              CustomInputDefault(
                controller: emailTextController,
                title: 'Email',
                hintText: 'alexindom@gmail.com',
                marginTop: 20,
                keyboardType: TextInputType.emailAddress,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
