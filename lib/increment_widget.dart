import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_manager_impl/flavor_model.dart';
import 'package:state_manager_impl/increment_cubit.dart';

class IncrementWidget extends StatefulWidget {
  final IncrementModel model;
  const IncrementWidget({
    super.key,
    required this.model,
  });

  @override
  State<IncrementWidget> createState() => _IncrementWidgetState();
}

class _IncrementWidgetState extends State<IncrementWidget> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<IncrementCubit>();
    return ListTile(
      title: Text(widget.model.name),
      trailing: Checkbox(
        value: context.watch<IncrementCubit>().state.contains(widget.model),
        onChanged: (val) {
          if (val ?? false) {
            cubit.increment(widget.model);
          } else {
            cubit.decrement(widget.model);
          }
        },
      ),
    );
  }
}
