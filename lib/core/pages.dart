import 'package:cekcuaca/core/routes.dart';
import 'package:cekcuaca/presentation/location/location_binding.dart';
import 'package:cekcuaca/presentation/location/location_view.dart';
import 'package:cekcuaca/presentation/location/selec_location/select_location_binding.dart';
import 'package:cekcuaca/presentation/location/selec_location/select_location_view.dart';
import 'package:cekcuaca/presentation/onboarding/onboarding_binding.dart';
import 'package:cekcuaca/presentation/onboarding/onboarding_view.dart';
import 'package:cekcuaca/presentation/splash/splash_binding.dart';
import 'package:cekcuaca/presentation/splash/splash_view.dart';
import 'package:cekcuaca/presentation/weather/weather_binding.dart';
import 'package:cekcuaca/presentation/weather/weather_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Pages {
  static final splash = GetPage(
      name: Routes.splash,
      page: () => const SplashView(),
      binding: SplashBinding());
  static final weather = GetPage(
    name: Routes.weather,
    page: () => const WeatherView(),
    binding: WeatherBinding(),
  );
  static final onboarding = GetPage(
    name: Routes.onboarding,
    page: () => const OnboardingView(),
    binding: OnboardingBinding(),
  );
  static final myLocation = GetPage(
    name: Routes.myLocation,
    page: () => const LocationView(),
    binding: LocationBinding(),
  );
  static final selectLocation = GetPage(
      name: Routes.selectLocation,
      page: () => const SelectLocationView(),
      binding: SelectLocationBinding());

  static final pageList = [
    splash,
    weather,
    onboarding,
    myLocation,
    selectLocation
  ];
}
