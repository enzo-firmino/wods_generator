import 'package:flutter/material.dart';
import 'package:wods_generator/main_providers.dart';
import 'package:wods_generator/presentation/screens/wods_generator/wods_generator_screen.dart';
import 'package:wods_generator/presentation/util/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MainProviders(
      child: MaterialApp(
        title: 'Wods Generator',
        theme: CustomTheme.light(),
        home: const WodsGeneratorScreen(),
      ),
    );
  }
}
