import 'package:cekcuaca/core/assets.dart';
import 'package:cekcuaca/core/routes.dart';
import 'package:cekcuaca/core/utils.dart';
import 'package:cekcuaca/presentation/weather/weather_logic.dart';
import 'package:cekcuaca/presentation/widget/handle_network_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WeatherView extends GetView<WeatherLogic> {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    var keys = GlobalKey<SliderDrawerState>();
    return RefreshIndicator(
      onRefresh: () => controller.getWeatherForecast(isRefresh: true),
      child: Scaffold(
        body: Obx(() {
          return HandleNetworkResponse(
            networkResponse: controller.getWeatherForecastResponse.value,
            onLoading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            onError: (e) => Center(
              child: Text("Error $e"),
            ),
            onEmpty: () => const Center(
              child: Text("Empty"),
            ),
            onSuccess: (data) {
              var todayWeather = data.todayWeather;

              return SliderDrawer(
                key: keys,
                sliderOpenSize: Get.width * 0.80,
                isDraggable: false,
                appBar: SliderAppBar(
                  appBarColor:
                      controller.backgroundColor.value == Colors.blueAccent
                          ? Theme.of(context).colorScheme.primaryContainer
                          : controller.backgroundColor.value,
                  isTitleCenter: false,
                  appBarPadding:
                      const EdgeInsets.only(left: 0, right: 16, top: 32),
                  drawerIcon: IconButton(
                      onPressed: () => keys.currentState?.showOrHide(),
                      icon: const Icon(Icons.menu)),
                  title: GestureDetector(
                    onTap: () => keys.currentState?.showOrHide(),
                    child: Row(
                      children: [
                        Text(
                          data.location.value?.name ?? "",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Icon(Icons.location_on_rounded),
                      ],
                    ),
                  ),
                ),
                slider: Scaffold(
                  appBar: AppBar(
                    title: const Text("My Location"),
                    automaticallyImplyLeading: false,
                  ),
                  persistentFooterAlignment: AlignmentDirectional.center,
                  persistentFooterButtons: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: FilledButton(
                          onPressed: () {
                            Get.toNamed(Routes.selectLocation);
                          },
                          child: const Text("Add Location")),
                    )
                  ],
                  body: StreamBuilder(
                      stream: controller.getMyLocation(),
                      initialData: const [],
                      builder: (c, s) {
                        if (s.connectionState == ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator.adaptive(),
                          );
                        } else if (s.hasData && s.data != null) {
                          return ListView(
                            children: [
                              ...List.generate(s.data!.length, (i) {
                                var item = s.data![i];

                                return Dismissible(
                                  key: Key(item.id.toString()),
                                  confirmDismiss: (direction) async {
                                    await Get.closeCurrentSnackbar();
                                    var delete =
                                        await controller.deleteLocation(item);
                                    if (!delete) {
                                      Get.snackbar(
                                          "Error", "Failed to delete location",
                                          snackPosition: SnackPosition.BOTTOM);
                                    }
                                    return delete;
                                  },
                                  direction: DismissDirection.startToEnd,
                                  background: Container(
                                      color:
                                          Theme.of(context).colorScheme.error,
                                      child: const Row(
                                        children: [Icon(Icons.delete)],
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: ListTile(
                                      onTap: () =>
                                          controller.getWeatherForecast(
                                              loc: item, isRefresh: true),
                                      title: Text(item.name ?? ""),
                                      subtitle: Text(item.address ?? ""),
                                      subtitleTextStyle:
                                          Theme.of(context).textTheme.bodySmall,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      trailing: item.isActive
                                          ? const Icon(
                                              Icons.location_on_rounded)
                                          : null,
                                      selected: item.isActive,
                                      selectedTileColor: item.isActive
                                          ? Theme.of(context)
                                              .colorScheme
                                              .secondaryContainer
                                          : Theme.of(context)
                                              .colorScheme
                                              .surface,
                                    ),
                                  ),
                                );
                              }),
                            ],
                          );
                        } else {
                          return const Text("Error");
                        }
                      }),
                ),
                child: GestureDetector(
                  onTap: () {
                    if (keys.currentState?.isDrawerOpen == true) {
                      keys.currentState?.toggle();
                    }
                  },
                  child: SingleChildScrollView(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Lottie.asset(
                              data.todayWeather?.weatherEnum.asset ??
                                  Assets.lottieWind,
                              height: 200),
                          Text("${data.todayWeather?.weatherEnum.weather}",
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                          Text(
                            "${todayWeather?.temperature?.toStringAsFixed(1)}°",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.copyWith(
                                    fontSize: 60, fontWeight: FontWeight.w500),
                          ),
                          Text(
                              "${todayWeather?.temperature?.toStringAsFixed(1)}° Feels like ${todayWeather?.temperatureApparent?.toStringAsFixed(1)}°"),
                          Card.filled(
                            color: Theme.of(context)
                                .colorScheme
                                .surfaceContainerHighest
                                .withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            margin: const EdgeInsets.all(16),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(Icons.speed_rounded),
                                            Text(
                                              "${todayWeather?.pressureSurfaceLevel} hpa",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                            Text(
                                              "Pressure",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(Icons.water_outlined),
                                            Text(
                                              "${todayWeather?.windSpeed} mph",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                            Text(
                                              "Wind",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                                Icons.remove_red_eye_outlined),
                                            Text(
                                              "${todayWeather?.visibility} km",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                            Text(
                                              "Visibility",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                                Icons.water_drop_outlined),
                                            Text(
                                              "${todayWeather?.humidity} %",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                            Text(
                                              "Humidity",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(Icons.air_outlined),
                                            Text(
                                              "${todayWeather?.windGust} mph",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                            Text(
                                              "Air Quality",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(Icons.wb_sunny_outlined),
                                            Text(
                                              "${todayWeather?.uvIndex}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                            Text(
                                              "UV",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Visibility(
                            visible: data.todayHourly != null &&
                                data.tomorrowHourly != null,
                            child: DefaultTabController(
                              length: 2,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const TabBar(
                                    dividerHeight: 0,
                                    isScrollable: true,
                                    tabAlignment: TabAlignment.start,
                                    tabs: [
                                      Tab(
                                        text: "Today",
                                      ),
                                      Tab(
                                        text: "Tomorrow",
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 180,
                                    child: TabBarView(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 16),
                                          height: 150,
                                          child: ListView.builder(
                                              shrinkWrap: true,
                                              scrollDirection: Axis.horizontal,
                                              itemCount:
                                                  data.todayHourly!.length,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              itemBuilder: (c, i) {
                                                var item = data.todayHourly![i];
                                                return Card(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .surfaceContainerHighest
                                                      .withOpacity(0.5),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100)),
                                                  child: Container(
                                                    width: Get.width / 5,
                                                    height: 150,
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(item.hourFormat),
                                                        Lottie.asset(
                                                            item.weatherEnum
                                                                    .asset ??
                                                                Assets
                                                                    .lottieWind,
                                                            height: 50),
                                                        Text(
                                                          "${item.temperature?.toStringAsFixed(0)} °C",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .titleSmall,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              }),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 16),
                                          height: 150,
                                          child: ListView.builder(
                                              shrinkWrap: true,
                                              scrollDirection: Axis.horizontal,
                                              itemCount:
                                                  data.tomorrowHourly!.length,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              itemBuilder: (c, i) {
                                                var item =
                                                    data.tomorrowHourly![i];
                                                return Card(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .surfaceContainerHighest
                                                      .withOpacity(0.5),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100)),
                                                  child: Container(
                                                    width: Get.width / 5,
                                                    height: 150,
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(item.hourFormat),
                                                        Lottie.asset(
                                                          item.weatherEnum
                                                                  .asset ??
                                                              Assets.lottieWind,
                                                        ),
                                                        Text(
                                                          "${item.temperature?.toStringAsFixed(0)} °C",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .titleSmall,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              }),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Visibility(
                            visible: data.daily != null,
                            child: Card.filled(
                              color: Theme.of(context)
                                  .colorScheme
                                  .surfaceContainerHighest
                                  .withOpacity(0.5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              margin: const EdgeInsets.all(16),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children:
                                      List.generate(data.daily!.length, (i) {
                                    var item = data.daily![i];
                                    return Padding(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                              flex: 2,
                                              child: Text(
                                                  "${item.dayFormat}\n${item.dateFormat}")),
                                          Expanded(
                                            flex: 2,
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.water_drop,
                                                  size: 16,
                                                ),
                                                Text("${item.humidity} %")
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Lottie.asset(
                                              height: 32,
                                              item.weatherEnum.asset ??
                                                  Assets.lottieWind,
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                                "${item.temperature?.toStringAsFixed(0)} °C"),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
