import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicator',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'SnackBars y Dialogs',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated Container',
      subTitle: 'Statefull widget animated',
      link: '/animated-container',
      icon: Icons.check_box_outline_blank),
  MenuItem(
      title: 'UI Controls + Tiles',
      subTitle: 'Controls in flutter',
      link: '/ui-controls',
      icon: Icons.control_camera_rounded),
  MenuItem(
      title: 'App Tutorial',
      subTitle: 'Introduction tutorial',
      link: '/app-tutorial',
      icon: Icons.add_chart_outlined),
  MenuItem(
      title: 'Infinite Scroll and pull',
      subTitle: 'Infinite scrolls and pull to refresh',
      link: '/infinite-scroll',
      icon: Icons.list_alt_outlined),


];
