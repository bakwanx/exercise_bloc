import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterBlocProviderEvent {}
class IncrementValue extends CounterBlocProviderEvent {}
class DecrementValue extends CounterBlocProviderEvent {}

class CounterBlocProvider extends Bloc<CounterBlocProviderEvent, int> {
  // NOTE: CARA LAIN
  // CounterBlocProvider(): super(0){
  //   on((event, emit) => emit(state + 1));
  //   on((event, emit) => emit(state + 1));
  // }

  CounterBlocProvider(): super(0){
    on<IncrementValue>(_onIncrement);
    on<DecrementValue>(_onDecrement);
  }

  void _onIncrement(IncrementValue event, Emitter<int> emit){
    emit(state + 1);
  }

  void _onDecrement(DecrementValue event, Emitter<int> emit) {
    emit(state - 1);
  }
}