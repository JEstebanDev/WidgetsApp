import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/screens.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/counter',
      name: CounterScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const CounterScreen();
      },
    ),
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/theme-changer',
      name: ThemeChangerScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const ThemeChangerScreen();
      },
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const ButtonsScreen();
      },
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const CardsScreen();
      },
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const ProgressScreen();
      },
    ),
    GoRoute(
      path: '/snackbars',
      name: SnackBarScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const SnackBarScreen();
      },
    ),
    GoRoute(
      path: '/animated-container',
      name: AnimatedScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const AnimatedScreen();
      },
    ),
    GoRoute(
      path: '/ui-controls',
      name: UIControlsScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const UIControlsScreen();
      },
    ),
    GoRoute(
      path: '/app-tutorial',
      name: AppTutorialScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const AppTutorialScreen();
      },
    ),
    GoRoute(
      path: '/infinite-scroll',
      name: InfiniteScrollScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const InfiniteScrollScreen();
      },
    ),
  ],
);
