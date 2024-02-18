import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_items.dart';
import 'package:widget_app/presentation/screens/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
static const String name="home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter + Material 3")),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<MenuItem> menuItems = appMenuItems;
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final menuItem = menuItems[index];
          return _CustomListTile(menuItem: menuItem);
        });
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    super.key,
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(
        menuItem.subTitle,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
      ),
      onTap: () {
        // Routing way 3: with Go_Router
        context.push(menuItem.link);
        /* Routing way 1:
        Navigator.pushNamed(context, menuItem.link);
     */
        /* Routing way 2: This needs logic to control what page will be routed
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ButtonsScreen(),
          ),
        );
         */
      },
    );
  }
}
