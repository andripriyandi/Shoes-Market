import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamo/pages/auth/sign_in_page.dart';
import 'package:shamo/pages/auth/sign_up_page.dart';
import 'package:shamo/pages/cart/cart_page.dart';
import 'package:shamo/pages/chat/detail_chat_page.dart';
import 'package:shamo/pages/checkout/checkout_page.dart';
import 'package:shamo/pages/checkout/checkout_success_page.dart';
import 'package:shamo/pages/home/product_page.dart';
import 'package:shamo/pages/main_page.dart';
import 'package:shamo/pages/profile/edit_profile_page.dart';
import 'package:shamo/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            '/': (context) => const SignInPage(),
            '/sign-in': (context) => const SignInPage(),
            '/sign-up': (context) => const SignUpPage(),
            '/home': (context) => const MainPage(),
            '/detail-chat': (context) => const DetailChatPage(),
            '/edit-profile': (context) => const EditProfilePage(),
            '/product': (context) => const ProductPage(),
            '/cart': (context) => const CartPage(),
            '/checkout': (context) => const CheckoutPage(),
            '/checkout-success': (context) => const CheckoutSuccessPage(),
          },
        );
      },
    );
  }
}
