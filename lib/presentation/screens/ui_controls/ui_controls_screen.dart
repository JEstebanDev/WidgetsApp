import 'package:flutter/material.dart';

class UIControlsScreen extends StatelessWidget {
  const UIControlsScreen({super.key});

  static const String name = "ui_controls_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Controls"),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakFast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                }),
            title: const Text("Developer mode"),
            subtitle: const Text("Additional controls")),
        ExpansionTile(
          title: const Text("Transportation option"),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text("By Car"),
                subtitle: const Text("Travelling by car"),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.car;
                    })),
            RadioListTile(
                title: const Text("By Boat"),
                subtitle: const Text("Travelling by boat"),
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.boat;
                    })),
            RadioListTile(
                title: const Text("By Plane"),
                subtitle: const Text("Travelling by plane"),
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.plane;
                    })),
            RadioListTile(
                title: const Text("By Submarine"),
                subtitle: const Text("Travelling by submarine"),
                value: Transportation.submarine,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.submarine;
                    }))
          ],
        ),
        CheckboxListTile(
            title: const Text("Do you want breakfast?"),
            value: wantsBreakFast,
            onChanged: (value) => setState(() {
                  wantsBreakFast = !wantsBreakFast;
                })),
        CheckboxListTile(
            title: const Text("Do you want lunch?"),
            value: wantsLunch,
            onChanged: (value) => setState(() {
                  wantsLunch = !wantsLunch;
                })),
        CheckboxListTile(
            title: const Text("Do you want dinner?"),
            value: wantsDinner,
            onChanged: (value) => setState(() {
                  wantsDinner = !wantsDinner;
                })),
      ],
    );
  }
}
