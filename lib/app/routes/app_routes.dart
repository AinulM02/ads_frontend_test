part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const NAVIGATION = _Paths.NAVIGATION;
  static const LIKES = _Paths.LIKES;
  static const NOTIFICATIONS = _Paths.NOTIFICATIONS;
  static const PROFILE = _Paths.PROFILE;
  static const EDITPROFILE = _Paths.EDITPROFILE;
  static const ONBOARDING = _Paths.ONBOARDING;
  static const SPLASH = _Paths.SPLASH;
  static const AUTH = _Paths.AUTH;
  static const PRODUCTS = _Paths.PRODUCTS;
  static const CART = _Paths.CART;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const FORGOT_PASSWORD = _Paths.FORGOT_PASSWORD;
  static const OTP = _Paths.OTP;
  static const DRAWER = _Paths.DRAWER;
  static const CUSTOM_DRAWER = _Paths.CUSTOM_DRAWER;
  static const CHECKOUT = _Paths.CHECKOUT;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const NAVIGATION = '/navigation';
  static const LIKES = '/likes';
  static const NOTIFICATIONS = '/notifications';
  static const PROFILE = '/profile';
  static const EDITPROFILE = '/edit-profile';
  static const ONBOARDING = '/onboarding';
  static const SPLASH = '/splash';
  static const AUTH = '/auth';
  static const PRODUCTS = '/products';
  static const CART = '/cart';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const FORGOT_PASSWORD = '/forgot-password';
  static const OTP = '/otp';
  static const DRAWER = '/drawer';
  static const CUSTOM_DRAWER = '/custom-drawer';
  static const CHECKOUT = '/checkout';
}
