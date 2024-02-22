import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo("Busca la comida", "caption", "assets/images/1.png"),
  SlideInfo("Entrega rapida", "caption", "assets/images/2.png"),
  SlideInfo("Disfruta la comida", "caption", "assets/images/3.png")
];

class AppTutorialScreen extends StatelessWidget {
  const AppTutorialScreen({super.key});

  static const String name = "app_tutorial_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((slideItem) => _Slide(
                        title: slideItem.title,
                        caption: slideItem.caption,
                        imageUrl: slideItem.imageUrl,
                      ))
                  .toList()),
          Positioned(
            right: 20,
              top: 50,
              child: TextButton(
            child: const Text("Exit"),
            onPressed: () => context.pop(),
          ))
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              caption,
              style: captionStyle,
            )
          ],
        ),
      ),
    );
  }
}
