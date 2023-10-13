import 'package:flutter/material.dart';

class NoWodsFoundText extends StatelessWidget {
  const NoWodsFoundText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Pas de WOD trouvé, veuillez revenir à l\'étape précédente et réessayer',
        style: Theme.of(context).textTheme.labelMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
