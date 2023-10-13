import 'package:flutter/material.dart';
import 'package:wods_generator/presentation/design_system/colours.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback _onPressed;
  final String _text;
  final Widget? _suffix;

  const CustomTextButton({
    super.key,
    required VoidCallback onPressed,
    required String text,
    Widget? suffix,
  })  : _onPressed = onPressed,
        _text = text,
        _suffix = suffix;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colours.yellow,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000))),
      onPressed: _onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            _text,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          if (_suffix != null) _suffix!,
        ],
      ),
    );
  }
}
