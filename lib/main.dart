import 'dart:io';

import 'package:cekcuaca/core/pages.dart';
import 'package:cekcuaca/core/routes.dart';
import 'package:cekcuaca/data/local/model/my_location.dart';
import 'package:cekcuaca/data/local/model/weather_data.dart';
import 'package:cekcuaca/data/remote/weather_api.dart';
import 'package:cekcuaca/domain/repository/weather_repository.dart';
import 'package:cekcuaca/domain/usecase/weather_usecase.dart';
import 'package:chuck_interceptor/chuck.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'core/dio_client.dart';
import 'data/repository/weather_repository_impl.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();

  await initDependency();
  runApp(const MyApp());
}

/// To handle Error: HandshakeException: Handshake error in client (OS Error: CERTIFICATE_VERIFY_FAILED: certificate has expired(handshake.cc:393))
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> initDependency() async {
  final dir = await getApplicationDocumentsDirectory();
  Get.put<Isar>(
    await Isar.open(
      [MyLocationSchema, WeatherDataSchema],
      directory: dir.path,
    ),
    permanent: true,
  );
  Get.put<Chuck>(Chuck(showInspectorOnShake: true, darkTheme: true),
      permanent: true);
  Get.put<DioClient>(DioClientImpl(chuck: Get.find()), permanent: true);
  Get.put<WeatherApi>(WeatherApiImpl(client: Get.find()), permanent: true);
  Get.put<WeatherRepository>(
      WeatherRepositoryImpl(db: Get.find(), api: Get.find()),
      permanent: true);
  Get.put<WeatherUsecase>(WeatherUsecaseImpl(repository: Get.find()),
      permanent: true);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Chuck chuck = Get.find();

    return DynamicColorBuilder(builder: (light, dark) {
      return GetMaterialApp(
        navigatorKey: chuck.getNavigatorKey(),
        theme: ThemeData(
          colorScheme: light,
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          colorScheme: dark,
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        getPages: Pages.pageList,
      );
    });
  }
}
