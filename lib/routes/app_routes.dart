import 'package:kyagaba_s_application4/presentation/splash_screen/splash_screen.dart';
import 'package:kyagaba_s_application4/presentation/splash_screen/binding/splash_binding.dart';
import 'package:kyagaba_s_application4/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:kyagaba_s_application4/presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import 'package:kyagaba_s_application4/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:kyagaba_s_application4/presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import 'package:kyagaba_s_application4/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:kyagaba_s_application4/presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';
import 'package:kyagaba_s_application4/presentation/log_in_screen/log_in_screen.dart';
import 'package:kyagaba_s_application4/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:kyagaba_s_application4/presentation/register_screen/register_screen.dart';
import 'package:kyagaba_s_application4/presentation/register_screen/binding/register_binding.dart';
import 'package:kyagaba_s_application4/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:kyagaba_s_application4/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:kyagaba_s_application4/presentation/verify_screen/verify_screen.dart';
import 'package:kyagaba_s_application4/presentation/verify_screen/binding/verify_binding.dart';
import 'package:kyagaba_s_application4/presentation/home_page_screen/home_page_screen.dart';
import 'package:kyagaba_s_application4/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:kyagaba_s_application4/presentation/donation_request_screen/donation_request_screen.dart';
import 'package:kyagaba_s_application4/presentation/donation_request_screen/binding/donation_request_binding.dart';
import 'package:kyagaba_s_application4/presentation/map_screen/map_screen.dart';
import 'package:kyagaba_s_application4/presentation/map_screen/binding/map_binding.dart';
import 'package:kyagaba_s_application4/presentation/report_screen/report_screen.dart';
import 'package:kyagaba_s_application4/presentation/report_screen/binding/report_binding.dart';
import 'package:kyagaba_s_application4/presentation/assistant_screen/assistant_screen.dart';
import 'package:kyagaba_s_application4/presentation/assistant_screen/binding/assistant_binding.dart';
import 'package:kyagaba_s_application4/presentation/create_event_screen/create_event_screen.dart';
import 'package:kyagaba_s_application4/presentation/create_event_screen/binding/create_event_binding.dart';
import 'package:kyagaba_s_application4/presentation/create_a_request_screen/create_a_request_screen.dart';
import 'package:kyagaba_s_application4/presentation/create_a_request_screen/binding/create_a_request_binding.dart';
import 'package:kyagaba_s_application4/presentation/find_donors_screen/find_donors_screen.dart';
import 'package:kyagaba_s_application4/presentation/find_donors_screen/binding/find_donors_binding.dart';
import 'package:kyagaba_s_application4/presentation/notifications_screen/notifications_screen.dart';
import 'package:kyagaba_s_application4/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:kyagaba_s_application4/presentation/profile_screen/profile_screen.dart';
import 'package:kyagaba_s_application4/presentation/profile_screen/binding/profile_binding.dart';
import 'package:kyagaba_s_application4/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:kyagaba_s_application4/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splashScreen = '/splash_screen';

  static String onboardingOneScreen = '/onboarding_one_screen';

  static String onboardingTwoScreen = '/onboarding_two_screen';

  static String onboardingThreeScreen = '/onboarding_three_screen';

  static String logInScreen = '/log_in_screen';

  static String registerScreen = '/register_screen';

  static String resetPasswordScreen = '/reset_password_screen';

  static String verifyScreen = '/verify_screen';

  static String homePageScreen = '/home_page_screen';

  static String donationRequestScreen = '/donation_request_screen';

  static String mapScreen = '/map_screen';

  static String reportScreen = '/report_screen';

  static String assistantScreen = '/assistant_screen';

  static String createEventScreen = '/create_event_screen';

  static String createARequestScreen = '/create_a_request_screen';

  static String findDonorsScreen = '/find_donors_screen';

  static String notificationsScreen = '/notifications_screen';

  static String profileScreen = '/profile_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => OnboardingTwoScreen(),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingThreeScreen,
      page: () => OnboardingThreeScreen(),
      bindings: [
        OnboardingThreeBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: verifyScreen,
      page: () => VerifyScreen(),
      bindings: [
        VerifyBinding(),
      ],
    ),
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: donationRequestScreen,
      page: () => DonationRequestScreen(),
      bindings: [
        DonationRequestBinding(),
      ],
    ),
    GetPage(
      name: mapScreen,
      page: () => MapScreen(),
      bindings: [
        MapBinding(),
      ],
    ),
    GetPage(
      name: reportScreen,
      page: () => ReportScreen(),
      bindings: [
        ReportBinding(),
      ],
    ),
    GetPage(
      name: assistantScreen,
      page: () => AssistantScreen(),
      bindings: [
        AssistantBinding(),
      ],
    ),
    GetPage(
      name: createEventScreen,
      page: () => CreateEventScreen(),
      bindings: [
        CreateEventBinding(),
      ],
    ),
    GetPage(
      name: createARequestScreen,
      page: () => CreateARequestScreen(),
      bindings: [
        CreateARequestBinding(),
      ],
    ),
    GetPage(
      name: findDonorsScreen,
      page: () => FindDonorsScreen(),
      bindings: [
        FindDonorsBinding(),
      ],
    ),
    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
