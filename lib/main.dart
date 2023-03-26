import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';

import 'achievements.dart';
import 'experiences.dart';
import 'home.dart';
import 'projects.dart';
import 'projects/aident.dart';
import 'projects/ceki.dart';
import 'projects/clovero.dart';
import 'projects/comet.dart';
import 'projects/eyve.dart';
import 'projects/fp_campaign.dart';
import 'projects/gasing_battle.dart';
import 'projects/gasing_evo.dart';
import 'projects/novus.dart';
import 'projects/pandoraverse.dart';
import 'projects/patrons.dart';
import 'projects/qololo.dart';

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
                  GoRoute(
                    path: 'comet',
                    builder: (BuildContext context, GoRouterState state) {
                      return const Comet();
                    },
                  ),
                  GoRoute(
                    path: 'ceki',
                    builder: (BuildContext context, GoRouterState state) {
                      return const Ceki();
                    },
                  ),
                  GoRoute(
                    path: 'gasing-battle',
                    builder: (BuildContext context, GoRouterState state) {
                      return const GasingBattle();
                    },
                  ),
                  GoRoute(
                    path: 'novus',
                    builder: (BuildContext context, GoRouterState state) {
                      return const Novus();
                    },
                  ),
                  GoRoute(
                    path: 'eyve',
                    builder: (BuildContext context, GoRouterState state) {
                      return const Eyve();
                    },
                  ),
                  GoRoute(
                    path: 'aident',
                    builder: (BuildContext context, GoRouterState state) {
                      return const Aident();
                    },
                  ),
                  GoRoute(
                    path: 'patrons',
                    builder: (BuildContext context, GoRouterState state) {
                      return const Patrons();
                    },
                  ),
                  GoRoute(
                    path: 'gasing-evo',
                    builder: (BuildContext context, GoRouterState state) {
                      return const GasingEVO();
                    },
                  ),
                  GoRoute(
                    path: 'qololo',
                    builder: (BuildContext context, GoRouterState state) {
                      return const Qololo();
                    },
                  ),
                  GoRoute(
                    path: 'clovero',
                    builder: (BuildContext context, GoRouterState state) {
                      return const Clovero();
                    },
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
