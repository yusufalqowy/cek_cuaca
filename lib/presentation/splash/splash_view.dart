import 'package:cekcuaca/core/assets.dart';
import 'package:cekcuaca/presentation/splash/splash_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashView extends GetView<SplashLogic> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.transparent,
          statusBarColor: Colors.transparent),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.only(bottom: Get.mediaQuery.padding.bottom + 16),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.primary, BlendMode.srcATop),
                  child: Lottie.asset(
                    height: 200,
                    Assets.lottieWind,
                    animate: true,
                    repeat: true,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Text("by Yudesk"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
