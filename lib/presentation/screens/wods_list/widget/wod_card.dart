import 'package:flutter/material.dart';
import 'package:wods_generator/domain/model/exercise/exercise.dart';
import 'package:wods_generator/domain/model/wod/wod.dart';
import 'package:wods_generator/presentation/screens/wod_chronometer/wod_chronometer_screen.dart';

class WodCard extends StatelessWidget {
  final Wod _wod;

  const WodCard({super.key, required Wod wod}) : _wod = wod;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => WodChronometerScreen(wod: _wod),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(8.0),
        color: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        _wod.name,
                        style:
                            Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
                      ),
                      const SizedBox(width: 4.0),
                      Text(
                        "(${_wod.type})",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2.0),
                  Text(
                    "Durée : ${_wod.timecap.toString()}min",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 2.0),
                  Text(
                    "Liste des exercices : ",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                  ),
                  ..._wod.exercises.map(
                    (Exercise exercise) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Row(
                          children: [
                            Text(
                              '- ${exercise.name}  ${exercise.repetitions != null ? 'x${exercise.repetitions.toString()}' : ''}',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
