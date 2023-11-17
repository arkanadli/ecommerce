import 'package:ecommerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // using theme as a device system theme selected
      themeMode: ThemeMode.system,
      // a light theme configuration
      theme: GAppTheme.customLightTheme,
      // a dark theme configuration
      darkTheme: GAppTheme.customDarkTheme,
      debugShowCheckedModeBanner: false,
      home: const Placeholder(),
    );
  }
}
