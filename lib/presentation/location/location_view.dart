import 'package:flutter/material.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Location"),
      ),
      body: ListView(
        children: [
          ...List.generate(
              5,
              (i) => ListTile(
                    title: Text(i.toString()),
                    subtitle: Text(i.toString()),
                  )),
          FilledButton(onPressed: () {}, child: const Text("Add Location")),
        ],
      ),
    );
  }
}
