import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback _onPressed;
  final String? _text;
  final IconData? _iconData;
  final Widget? _suffix;

  const CustomElevatedButton.text({
    super.key,
    required VoidCallback onPressed,
    required String text,
    Widget? suffix,
  })  : _onPressed = onPressed,
        _text = text,
        _iconData = null,
        _suffix = suffix;

  const CustomElevatedButton.icon({
    super.key,
    required VoidCallback onPressed,
    required IconData iconData,
    Widget? suffix,
  })  : _onPressed = onPressed,
        _text = null,
        _iconData = iconData,
        _suffix = suffix;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          elevation: 0,
          minimumSize: const Size.fromHeight(50),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000))),
      onPressed: _onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_text != null)
            Text(
              _text!,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
            ),
          if (_iconData != null)
            Icon(
              _iconData!,
              color: Colors.white,
              size: 28,
            ),
          if (_suffix != null) _suffix!,
        ],
      ),
    );
  }
}
