import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'playback/bloc/bloc.dart';
import 'providers/theme.dart';
import 'router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final settings = ValueNotifier(ThemeSettings(
    sourceColor: const Color(0xff00cbe6), // Replace this color
    themeMode: ThemeMode.system,
  ));
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PlaybackBloc>(
      create: (context) => PlaybackBloc(),
      child: DynamicColorBuilder(
        builder: (lightDynamic, darkDynamic) => ThemeProvider(
            lightDynamic: lightDynamic,
            darkDynamic: darkDynamic,
            settings: settings,
            child: NotificationListener<ThemeSettingChange>(
              onNotification: (notification) {
                settings.value = notification.settings;
                return true;
              },
              child: ValueListenableBuilder<ThemeSettings>(
                valueListenable: settings,
                builder: (context, value, _) {
                  final theme =
                      ThemeProvider.of(context); // Create theme instance
                  return MaterialApp.router(
                    debugShowCheckedModeBanner: false,
                    title: 'Pet Hotel',
                    theme: theme.light(settings.value.sourceColor),
                    darkTheme: theme.dark(settings.value.sourceColor),
                    themeMode: theme.themeMode(),
                    // Add theme
                    // Add dark theme
                    // Add theme mode
                    routeInformationParser: appRouter.routeInformationParser,
                    routeInformationProvider:
                        appRouter.routeInformationProvider,
                    routerDelegate: appRouter.routerDelegate,
                  );
                },
              ),
            )),
      ),
    );
  }
}
