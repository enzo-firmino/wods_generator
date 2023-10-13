import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String _label;
  final bool _autofocus;
  final Function(String)? _onSubmitted;
  final TextEditingController? _controller;

  const CustomTextField({
    super.key,
    required String label,
    bool autofocus = true,
    Function(String)? onSubmitted,
    TextEditingController? controller,
  })  : _label = label,
        _autofocus = autofocus,
        _onSubmitted = onSubmitted,
        _controller = controller;

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(24.0),
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2.0,
      ),
    );
    return TextField(
      autofocus: _autofocus,
      controller: _controller,
      cursorColor: Colors.black,
      maxLines: null,
      onSubmitted: _onSubmitted,
      style: Theme.of(context).textTheme.labelMedium,
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        labelText: _label,
        labelStyle: Theme.of(context).textTheme.bodyMedium,
        focusedBorder: outlineInputBorder,
        disabledBorder: outlineInputBorder,
        errorBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        border: outlineInputBorder,
      ),
    );
  }
}
