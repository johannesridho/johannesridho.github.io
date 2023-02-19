import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProjectItem extends StatelessWidget {
  final String img;
  final String title;
  final String subtitle;
  final String url;

  const ProjectItem({
    super.key, required this.img, required this.title, required this.subtitle, required this.url
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child:
        InkWell(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(9.0),
                child: Image.asset(img),
              ),
              ListTile(
                title: Text(title),
                subtitle: Text(subtitle),
              ),
            ],
          ),
          onTap: () => context.go('/projects/$url'),
        ),
      ),
    );
  }
}
