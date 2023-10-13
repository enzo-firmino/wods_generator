import 'package:flutter/material.dart';
import 'package:wods_generator/presentation/design_system/colours.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String _title;

  const CustomAppBar({
    super.key,
    required String title,
  }) : _title = title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colours.yellow,
      title: Text(
        _title,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 55);
}
