import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kadra/Pages/cubit/main_cubit.dart';
import 'package:kadra/Pages/data_source.dart';
import 'package:kadra/repository.dart';
import 'package:kadra/usables.dart';

class Sztab extends StatelessWidget {
  const Sztab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sztab'),
      ),
      body: Center(
          child: BlocProvider(
        create: (context) => MainCubit(Repository(DataSource()))..getSztab(),
        child: BlocBuilder<MainCubit, MainState>(
          builder: (context, state) {
            if (state.status == Status.error) {
              return const Text('ERROR');
            }
            if (state.status == Status.loading) {
              return const Text('LOADING');
            }

            return ListView(children: [
              for (final a in state.sztab) ...[MemberContainer(a)]
            ]);
          },
        ),
      )),
    );
  }
}

class MemberContainer extends StatelessWidget {
  const MemberContainer(
    this.model, {
    super.key,
  });
  final SztabModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: Colors.orange,
        child: Column(
          children: [
            Image.network(model.imageURL),
            Text(model.pozycja),
            Text(model.name),
          ],
        ),
      ),
    );
  }
}
