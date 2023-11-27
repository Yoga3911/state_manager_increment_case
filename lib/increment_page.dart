import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_manager_impl/flavor_model.dart';
import 'package:state_manager_impl/increment_widget.dart';

import 'increment_cubit.dart';

class IncrementPage extends StatelessWidget {
  final List<IncrementModel> increments;
  final BuildContext ctx;
  const IncrementPage({
    super.key,
    required this.increments,
    required this.ctx,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Increment Page"),
      ),
      body: BlocProvider.value(
        value: ctx.read<IncrementCubit>(),
        child: ListView(
          children: increments
              .map(
                (e) => IncrementWidget(model: e),
              )
              .toList(),
        ),
      ),
    );
  }
}
