part of 'dog_cubit.dart';

abstract class DogState extends Equatable {
  const DogState();
}

class DogInitial extends DogState {
  @override
  List<Object> get props => [];
}

class DogLoading extends DogState {
  @override
  List<Object> get props => [];
}

class DogLoaded extends DogState {
  final data;
  final data1;
  const DogLoaded(this.data, this.data1);
  @override
  List<Object> get props => [data,data1];
}

class DogError extends DogState {
  @override
  List<Object> get props => [];
}
