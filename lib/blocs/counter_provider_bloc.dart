import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterBlocProviderState {}
class IncrementValue extends CounterBlocProviderState {}
class DecrementValue extends CounterBlocProviderState {}

class CounterBlocProvider extends Bloc<CounterBlocProviderState, int> {
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