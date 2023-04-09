import 'package:flutter/material.dart';
import 'package:tourbiene/main.dart';
import 'package:tourbiene/screens/categories.dart';
import 'package:tourbiene/screens/change_password.dart';
import 'package:tourbiene/screens/deals.dart';
import 'package:tourbiene/screens/drawer/bids_offers_page.dart';
import 'package:tourbiene/screens/drawer/buy_again_page.dart';
import 'package:tourbiene/screens/drawer/notification_page.dart';
import 'package:tourbiene/screens/drawer/purchase_page.dart';
import 'package:tourbiene/screens/drawer/search_page.dart';
import 'package:tourbiene/screens/drawer/setting_page.dart';
import 'package:tourbiene/screens/drawer/watching/watching.dart';
import 'package:tourbiene/screens/googlescreens/forgetpasswordscreens/reset_password_pagge.dart';

import 'package:tourbiene/screens/googlescreens/google_register_page.dart';
import 'package:tourbiene/screens/googlescreens/google_screen.dart';
import 'package:tourbiene/screens/googlescreens/signin_btns_page.dart';
import 'package:tourbiene/screens/home_page.dart';
import 'package:tourbiene/screens/loginscreens/login_page.dart';
import 'package:tourbiene/screens/saveedscreen/saved.dart';
import 'package:tourbiene/screens/selling.dart';
import 'package:tourbiene/screens/signupscreens/signup_page.dart';

class AppNavigation {
  // ignore: body_might_complete_normally_nullable
  static Route? buildPage(RouteSettings settings) {
    switch (settings.name) {
      case SigninPage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => const SigninPage(), settings: settings);
        }

      case SignupPage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => const SignupPage(), settings: settings);
        }
      case HomePage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => HomePage(), settings: settings);
        }
      case SellingPage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => const SellingPage(), settings: settings);
        }
      case Catrgories.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => const Catrgories(), settings: settings);
        }
      case Tabs.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => const Tabs(), settings: settings);
        }
      case SavedPage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => const SavedPage(), settings: settings);
        }
      case GoogleRegisterPage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => const GoogleRegisterPage(),
              settings: settings);
        }
      case SignInButtonPage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => const SignInButtonPage(),
              settings: settings);
        }
      case ResetPasswordPage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => ResetPasswordPage(), settings: settings);
        }
      case MyAppDrawer.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => MyAppDrawer(), settings: settings);
        }
      case NotificationPage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => NotificationPage(), settings: settings);
        }
      case SearchPage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => const SearchPage(), settings: settings);
        }
      case WatchingPage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => const WatchingPage(), settings: settings);
        }

      case BuyAgainPage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => const BuyAgainPage(), settings: settings);
        }

      case PurchasesPage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => const PurchasesPage(), settings: settings);
        }
      case SettingPage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => const SettingPage(), settings: settings);
        }
      case BidsAndoffersPage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => const BidsAndoffersPage(),
              settings: settings);
        }
      case GoogleSignInPage.pageName:
        {
          return MaterialPageRoute(
              builder: (context) => const GoogleSignInPage(),
              settings: settings);
        }
        case ChangePasswordScreen.pageName:
        {
          return MaterialPageRoute(
              builder: (context) =>  ChangePasswordScreen(),
              settings: settings);
        }

      default:
        {}
    }
  }
}
class Pages{
  static const String SIGNINPAGE = 'SIGNINPAGE';
}
