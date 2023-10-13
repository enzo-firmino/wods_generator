import 'package:flutter/material.dart';
import 'package:wods_generator/presentation/design_system/colours.dart';
import 'package:wods_generator/presentation/design_system/custom_app_bar.dart';

class CustomScaffold extends StatelessWidget {
  final String _title;
  final Widget _body;

  const CustomScaffold({
    super.key,
    required String title,
    required Widget body,
  })  : _title = title,
        _body = body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.yellow,
      appBar: CustomAppBar(
        title: _title,
      ),
      body: _body,
    );
  }
}
