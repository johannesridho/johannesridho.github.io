import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:jortp/projects/pandoraverse.dart';

import 'achievements.dart';
import 'experiences.dart';
import 'home.dart';
import 'projects.dart';
import 'projects/fp_campaign.dart';

class CustomImageCache extends WidgetsFlutterBinding {
  @override
  ImageCache createImageCache() {
    ImageCache imageCache = super.createImageCache();
    imageCache.maximumSizeBytes = 1024 * 1024 * 1024; // 1 GB
    return imageCache;
  }
}

void main() {
  CustomImageCache();

  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'jortp.com',
      theme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontSize: 21, fontWeight: FontWeight.w600, color: Color.fromRGBO(112, 110, 107, 1)),
          bodyLarge: TextStyle(fontSize: 17, height: 1.5, color: Color.fromRGBO(112, 110, 107, 1)),
        ),
        primaryIconTheme: const IconThemeData(
          color: Color.fromRGBO(102, 102, 102, 1),
        ),
      ),
      routerConfig: GoRouter(
        routes: <RouteBase>[
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return const HomePage();
            },
            routes: <RouteBase>[
              GoRoute(
                path: 'achievements',
                builder: (BuildContext context, GoRouterState state) {
                  return const Achievements();
                },
              ),
              GoRoute(
                path: 'experiences',
                builder: (BuildContext context, GoRouterState state) {
                  return const Experience();
                },
              ),
              GoRoute(
                path: 'projects',
                builder: (BuildContext context, GoRouterState state) {
                  return const Projects();
                },
                routes: <RouteBase>[
                  GoRoute(
                    path: 'pandoraverse',
                    builder: (BuildContext context, GoRouterState state) {
                      return const Pandoraverse();
                    },
                  ),
                  GoRoute(
                    path: 'foodpanda-campaign-carousel',
                    builder: (BuildContext context, GoRouterState state) {
                      return const FPCampaign();
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
