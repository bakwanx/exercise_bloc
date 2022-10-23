import 'package:exercise_bloc/blocs/counter_bloc.dart';
import 'package:flutter/material.dart';

class TutorOneScreen extends StatefulWidget {
  const TutorOneScreen({Key? key}) : super(key: key);

  @override
  State<TutorOneScreen> createState() => _TutorOneScreenState();
}

class _TutorOneScreenState extends State<TutorOneScreen> {
  CounterBloc counterBloc = CounterBloc();

  @override
  void dispose() {
    counterBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter BLoc"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              initialData: counterBloc.initialValue,
              stream: counterBloc.outputValue,
              builder: (context, snapshot) {
                return Text(
                  "Angka Saat Ini : ${snapshot.data}",
                  style: TextStyle(fontSize: 25),
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
                    counterBloc.sinkInput.add("increase");
                  },
                  icon: Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    counterBloc.sinkInput.add("decrease");
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
