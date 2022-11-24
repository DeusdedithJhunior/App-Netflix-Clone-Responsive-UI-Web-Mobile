import 'package:flutter/material.dart';
import 'package:netflix_clone/data/assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({
    super.key,
    this.scrollOffset = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0), //logo netflix
            const SizedBox(width: 12),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarButton(
                      title: 'Séries', onTap: () => debugPrint('Séries')),
                  _AppBarButton(
                      title: 'Filmes', onTap: () => debugPrint('Filmes')),
                  _AppBarButton(
                      title: 'Minha Lista',
                      onTap: () => debugPrint('Minha Lista')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// classe que gerencia os icones da app bar
class _AppBarButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const _AppBarButton({
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
