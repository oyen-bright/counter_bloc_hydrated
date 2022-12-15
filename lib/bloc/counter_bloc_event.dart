part of 'counter_bloc_bloc.dart';

abstract class CounterBlocEvent extends Equatable {
  const CounterBlocEvent();

  @override
  List<Object> get props => [];
}

class IncrementCountEvent extends CounterBlocEvent {}

class DecrementCountEvent extends CounterBlocEvent {}
