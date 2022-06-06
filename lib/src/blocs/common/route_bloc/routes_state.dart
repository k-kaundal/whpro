part of 'routes_bloc.dart';

abstract class RoutesState extends Equatable {
  const RoutesState();
}

class RoutesInitial extends RoutesState {
  @override
  List<Object> get props => [];
}

class RoutesWithUser extends RoutesState{
  @override

  List<Object?> get props => [];

}

class RoutesWithOutUser extends RoutesState{

  RoutesWithOutUser(User user);
  @override

  List<Object?> get props => [];

}

class RoutesError extends RoutesState{
  @override

  List<Object?> get props => [];

}
