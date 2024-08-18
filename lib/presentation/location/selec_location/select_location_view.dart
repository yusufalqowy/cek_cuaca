import 'package:cekcuaca/core/routes.dart';
import 'package:cekcuaca/core/utils.dart';
import 'package:cekcuaca/data/local/model/my_location.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'select_location_logic.dart';

class SelectLocationView extends GetView<SelectLocationLogic> {
  const SelectLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("Select Location on Map"),
      ),
      body: Obx(() {
        return GoogleMap(
          markers: {controller.marker.value},
          initialCameraPosition: const CameraPosition(
              target: LatLng(-7.0160225998239545, 109.77308897994179),
              zoom: 14),
          onMapCreated: (controller) {},
          onTap: (loc) {
            controller.setMarker(loc);
            scaffoldKey.currentState?.showBottomSheet(
                showDragHandle: true, (c) => _showBottomSheet(c, loc));
          },
        );
      }),
    );
  }

  Widget _showBottomSheet(BuildContext context, LatLng loc) => TapRegion(
        onTapOutside: (e) => Get.back(closeOverlays: true),
        child: FutureBuilder<MyLocation>(
            future: controller.getLocation(loc),
            initialData: MyLocation(),
            builder: (context, s) {
              return Container(
                width: double.infinity,
                height: 200,
                padding: const EdgeInsets.all(16),
                child: Builder(
                  builder: (c) {
                    if (s.connectionState == ConnectionState.waiting) {
                      return const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircularProgressIndicator.adaptive(),
                        ],
                      );
                    } else if (s.hasData && s.data != null) {
                      var data = s.data!;
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.name.toString(),
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            data.address.toString(),
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            data.createAt?.toStringFormat("EEEE, dd MMMM") ??
                                "",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: FilledButton(
                                onPressed: () async {
                                  await controller.selectLocation(data);
                                  Get.snackbar(
                                      "Info", "Location already added!",
                                      snackPosition: SnackPosition.BOTTOM);
                                  Future.delayed(const Duration(seconds: 1),
                                      () {
                                    Get.offAndToNamed(Routes.weather);
                                  });
                                },
                                child: const Text("Select Location")),
                          )
                        ],
                      );
                    } else {
                      return const Text("Error");
                    }
                  },
                ),
              );
            }),
      );
}
