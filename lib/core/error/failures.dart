import 'package:equatable/equatable.dart';

abstract class Failures extends Equatable {
  const Failures([List props = const <dynamic>[]]);

  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failures {}
