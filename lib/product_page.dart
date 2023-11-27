import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_manager_impl/dummy.dart';
import 'package:state_manager_impl/increment_page.dart';

import 'increment_cubit.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Page'),
      ),
      body: ListView(
        children: products
            .map(
              (e) => BlocProvider(
                create: (_) => IncrementCubit(),
                child: Builder(builder: (context) {
                  return ListTile(
                    title: Text(e.name),
                    subtitle: Text(e.quantity.toString()),
                    trailing: Text(
                      context.watch<IncrementCubit>().state.length.toString(),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => IncrementPage(
                            increments: e.flavors,
                            ctx: context,
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
            )
            .toList(),
      ),
    );
  }
}
