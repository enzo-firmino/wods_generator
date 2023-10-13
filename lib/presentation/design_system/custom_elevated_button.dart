import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback _onPressed;
  final String _text;
  final Widget? _suffix;

  const CustomElevatedButton({
    super.key,
    required VoidCallback onPressed,
    required String text,
    Widget? suffix,
  })  : _onPressed = onPressed,
        _text = text,
        _suffix = suffix;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000))),
      onPressed: _onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            _text,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
          if (_suffix != null) _suffix!,
        ],
      ),
    );
  }
}
