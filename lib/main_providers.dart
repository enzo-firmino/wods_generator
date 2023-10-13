import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wods_generator/bloc/wods_generator/wods_generator_bloc.dart';
import 'package:wods_generator/data/datasource/wod_api.dart';
import 'package:wods_generator/data/repository/wod_repository_impl.dart';
import 'package:wods_generator/domain/repository/wod_repository.dart';

class MainProviders extends StatelessWidget {
  final Widget _child;

  const MainProviders({super.key, required Widget child}) : _child = child;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<WodRepository>(
      create: (BuildContext context) => WodRepositoryImpl(
        wodApi: WodApi(),
      ),
      child: BlocProvider<WodsGeneratorBloc>(
        create: (context) => WodsGeneratorBloc(
          wodRepository: RepositoryProvider.of<WodRepository>(context),
        ),
        child: _child,
      ),
    );
  }
}
