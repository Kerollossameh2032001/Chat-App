import 'package:equatable/equatable.dart';

abstract class BaseUseCase<T, Parameter> {
  Future<T> call(Parameter parameter);
}

class NoParameter extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
