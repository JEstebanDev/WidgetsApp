import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/router/app_router.dart';
import 'package:widget_app/config/theme/app_theme.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';
// import 'package:widget_app/presentation/screens/screens.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppTheme appTheme = ref.watch(themeNotifierProvider);
    return MaterialApp.router(
      title: "Flutter Widgets",
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: appTheme.selectedColor, isDarkMode: appTheme.isDarkMode)
          .getTheme(),

      /* Routing way 1:
      routes: {
        '/buttons':(context)=> const ButtonsScreen(),
        '/cards':(context)=> const CardsScreen()
      },
      */
    );
  }
}
