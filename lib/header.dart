import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );

    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(title),
      actions: <Widget>[
        TextButton(
          style: style,
          onPressed: () => context.go('/'),
          child: const Text('Home'),
        ),
        TextButton(
          style: style,
          onPressed: () => context.go('/projects'),
          child: const Text('Projects'),
        ),
        TextButton(
          style: style,
          onPressed: () => context.go('/achievements'),
          child: const Text('Achievements'),
        ),
        TextButton(
          style: style,
          onPressed: () => context.go('/experiences'),
          child: const Text('Experiences'),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
