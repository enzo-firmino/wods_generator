import 'package:flutter/material.dart';

class TextFieldHint extends StatelessWidget {
  const TextFieldHint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Text(
          'exemple : “j’ai une douleur au bras droit”',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
