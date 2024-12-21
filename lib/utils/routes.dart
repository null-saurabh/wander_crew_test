import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wander_crew/pages/client/reception_home_screen/reception_home_screen.dart';
import 'package:wander_crew/test.dart';


import '../pages/client/about_us_contact_us/about_us_screen.dart';
import '../pages/client/about_us_contact_us/contact_us_screen.dart';
import '../pages/client/about_us_contact_us/privacy_policy_screen.dart';
import '../pages/client/about_us_contact_us/refund_cancellation_rule_screen.dart';
import '../pages/client/about_us_contact_us/term_condition_screen.dart';
import '../pages/client/bonfire_screen/bonfire_booking_screen.dart';
import '../pages/client/cart_screen/cart_screen.dart';
import '../pages/client/menu_screen/menu_screen.dart';
import '../pages/client/self_checking_screen/check_in_screen.dart';
import '../pages/client/track_order_screen/track_order_screen.dart';


final GoRouter router = GoRouter(
  initialLocation: Routes.receptionHome,
  routes: [
    // GoRoute(
    //   path: Routes.wanderCrewHome,
    //   name: 'WanderCrewHome',
    //   builder: (context, state) => const WanderCrewHomePage(),
    // ),
    // GoRoute(
    //   path: Routes.wanderCrewSelectRoom,
    //   name: 'SelectRoom',
    //   builder: (context, state) => SelectRoomScreen(),
    // ),
    GoRoute(
      path: Routes.receptionHome,
      name: 'ReceptionHome',
      builder: (context, state) => const TestScreen(),
    ),
    // GoRoute(
    //   path: Routes.receptionMenu,
    //   name: 'ReceptionMenu',
    //   builder: (context, state) => const MenuScreen(),
    // ),
    // GoRoute(
    //   path: Routes.receptionMenuCart,
    //   name: 'ReceptionMenuCart',
    //   builder: (context, state) => const CartScreen(),
    // ),
    // GoRoute(
    //   path: Routes.receptionCheckIn,
    //   name: 'ReceptionCheckIn',
    //   builder: (context, state) => const CheckInScreen(),
    // ),
    // GoRoute(
    //   path: Routes.receptionTrackOrder,
    //   name: 'ReceptionTrackOrder',
    //   builder: (context, state) => const TrackOrderScreen(),
    // ),
    // GoRoute(
    //   path: Routes.receptionBonfire,
    //   name: 'ReceptionBonfire',
    //   builder: (context, state) => const BonfireBookingScreen(),
    // ),
    // GoRoute(
    //   path: Routes.termAndCondition,
    //   name: 'TermAndCondition',
    //   builder: (context, state) => const TermsAndConditionsPage(),
    // ),GoRoute(
    //   path: Routes.privacyPolicy,
    //   name: 'PrivacyPolicy',
    //   builder: (context, state) => const PrivacyPolicyPage(),
    // ),GoRoute(
    //   path: Routes.aboutUs,
    //   name: 'AboutUs',
    //   builder: (context, state) => const AboutUsPage(),
    // ),
    // GoRoute(
    //   path: Routes.contactUs,
    //   name: 'ContactUs',
    //   builder: (context, state) => const ContactUsPage(),
    // ),
    // GoRoute(
    //   path: Routes.refundCancellation,
    //   name: 'RefundCancellation',
    //   builder: (context, state) => const RefundCancellationPolicyPage(),
    // ),
    // GoRoute(
    //   path: Routes.adminLogin,
    //   name: 'AdminLogin',
    //   builder: (context, state) => const AdminLogin(),
    // ),
    // GoRoute(
    //   path: Routes.adminHome,
    //   name: 'AdminHome',
    //   builder: (context, state) => const AdminHomeScreen(),
    //   redirect: (context, state) => _authGuard(state),
    // ),
    // GoRoute(
    //   path: Routes.adminMenu,
    //   name: 'AdminMenu',
    //   builder: (context, state) => const MenuAdminScreen(),
    //   redirect: (context, state) => _authGuard(state),
    // ),
    // GoRoute(
    //   path: Routes.adminAddMenu,
    //   name: 'AdminAddMenu',
    //   builder: (context, state) => const AddFoodItem(),
    //   redirect: (context, state) => _authGuard(state),
    // ),
    // GoRoute(
    //   path: Routes.adminOrderList,
    //   name: 'AdminOrderList',
    //   builder: (context, state) => const OrdersListScreen(),
    //   redirect: (context, state) => _authGuard(state),
    // ),
    // GoRoute(
    //   path: Routes.adminCheckInList,
    //   name: 'AdminCheckInList',
    //   builder: (context, state) => const CheckInListAdmin(),
    //   redirect: (context, state) => _authGuard(state),
    // ),
    // GoRoute(
    //   path: Routes.adminManageUsers,
    //   name: 'AdminManageUsers',
    //   builder: (context, state) => const ManageUserAdmin(),
    //   redirect: (context, state) => _authGuard(state),
    // ),
    // GoRoute(
    //   path: Routes.adminManageVoucher,
    //   name: 'AdminManageVoucher',
    //   builder: (context, state) => const ManageVoucherAdmin(),
    //   redirect: (context, state) => _authGuard(state),
    // ),
  ],
  errorBuilder: (context, state) => const Scaffold(
    body: Center(child: Text('Page not found')),
  ),
);


// Middleware auth check
// String? _authGuard(GoRouterState state) {
//   final AuthService authService = AuthService.to;
//   if (!authService.isLoggedIn.value) {
//     final redirectUri = Uri.encodeComponent(state.uri.toString());
//     return '${Routes.adminLogin}?redirect=$redirectUri';
//   }
//   return null; // Allow access if authenticated
// }



class Routes {
  // static const String wanderCrew = '/';

  // static const String wanderCrewHome = '/';
  // static const String wanderCrewSelectRoom = '/rooms';

  static const String receptionHome = '/reception';
  // static const String receptionMenu = '/reception/menu';
  // static const String receptionMenuCart = '/reception/menu/cart';
  // static const String receptionCheckIn = '/reception/checkIn';
  // static const String receptionTrackOrder = '/reception/track-order';
  // static const String receptionBonfire = '/reception/bonfire';
  // static const String termAndCondition = '/reception/terms-conditions';
  // static const String privacyPolicy = '/reception/privacy-policy';
  // static const String aboutUs = '/reception/about-us';
  // static const String contactUs = '/reception/contact-us';
  // static const String refundCancellation = '/reception/refund-cancellation';

  // static const String adminLogin = '/admin/login';
  // static const String adminHome = '/admin';
  // static const String adminMenu = '/admin/menu';
  // static const String adminAddMenu = '/admin/add-menu';
  // static const String adminOrderList = '/admin/order-list';
  // static const String adminCheckInList = '/admin/check-in-list';
  // static const String adminManageUsers = '/admin/manage-user';
  // static const String adminManageVoucher = '/admin/manage-voucher';

  static const String notFound = '/not-found';
}

