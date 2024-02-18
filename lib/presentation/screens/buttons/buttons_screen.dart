import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  static const String name = "buttons_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons screen"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text("Elevated Button")),
              const ElevatedButton(
                  onPressed: null, child: Text("Elevated Disable")),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_rounded),
                  label: const Text("Elevated Icon")),
              FilledButton(onPressed: () {}, child: const Text("Filled")),
              FilledButton.icon(
                  icon: const Icon(Icons.access_time),
                  onPressed: () {},
                  label: const Text("Filled Icon")),
              OutlinedButton(onPressed: () {}, child: const Text("Outline")),
              OutlinedButton.icon(
                  icon: const Icon(Icons.add_circle),
                  onPressed: () {},
                  label: const Text("Outline Icon")),
              TextButton(onPressed: () {}, child: const Text("Text")),
              TextButton.icon(
                  icon: const Icon(Icons.account_circle_sharp),
                  onPressed: () {},
                  label: const Text("Text Icon")),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.app_registration_rounded)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit_sharp),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(colors.primary),
                    iconColor: const MaterialStatePropertyAll(Colors.white)),
              ),
              const CustomButton()
            ],
          ),
        ));
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "Custom Button",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
