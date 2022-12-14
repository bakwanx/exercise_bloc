import 'package:exercise_bloc/blocs/counter_provider_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TutorTwoScreen extends StatelessWidget {
  const TutorTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //Bentuk listen true
    CounterBlocProvider counterProviderBloc = BlocProvider.of<CounterBlocProvider>(context, listen: true);
    //CounterBlocProvider counterBlocProvider = context.watch<CounterBlocProvider>();

    //Bentuk listen false
    // CounterBlocProvider counterProviderBloc = BlocProvider.of<CounterBlocProvider>(context);
    // CounterBlocProvider counterBlocProvider = context.read()<CounterBlocProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Counter App",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBlocProvider, int>(
              builder: (context, state) {
                return Text(
                  "Angka saat init : ${state}",
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    counterProviderBloc.add(IncrementValue());
                  },
                  icon: Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    counterProviderBloc.add(DecrementValue());
                  },
                  icon: Icon(Icons.remove),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
