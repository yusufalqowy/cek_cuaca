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
    var gCamera = const CameraPosition(
      target: LatLng(-4.395991342413524, 109.81634895756751),
    );
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("Select Location on Map"),
      ),
      body: Obx(() {
        return GoogleMap(
          markers: {controller.marker.value},
          initialCameraPosition: gCamera,
          myLocationEnabled: true,
          onMapCreated: (con) => controller.gController.complete(con),
          onTap: (loc) async {
            controller.setMarker(loc);
            await controller.moveCamera(loc);
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
                                onPressed: () {
                                  controller.addLocation(data).then(
                                    (v) {
                                      Future.delayed(const Duration(seconds: 1),
                                          () {
                                        Get.back(closeOverlays: true);
                                        Get.back(closeOverlays: true);
                                      });
                                    },
                                    onError: (e) {
                                      Get.snackbar("Error", e.toString(),
                                          snackPosition: SnackPosition.BOTTOM);
                                    },
                                  );
                                },
                                child: const Text("Add Location")),
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
