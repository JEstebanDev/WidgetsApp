import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/presentation/providers/counter_provider.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  static const String name = "Counter Screen";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counter = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkModeProver);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(isDarkModeProver.notifier).update((state) => !state);
              },
              icon: Icon(isDarkMode
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Different way to do it
          // ref.read(counterProvider.notifier).update((state) => state + 1);
          ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text("Value: $counter",
            style: Theme.of(context).textTheme.titleLarge),
      ),
    );
  }
}
