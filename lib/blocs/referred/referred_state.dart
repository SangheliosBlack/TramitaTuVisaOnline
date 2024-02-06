part of 'referred_bloc.dart';

sealed class ReferredState extends Equatable {
  const ReferredState();
  
  @override
  List<Object> get props => [];
}

final class ReferredInitial extends ReferredState {}

class ReferredUsersLoading extends ReferredState {}

class ReferredUsersSuccess extends ReferredState {
  final List<Usuario> listUsers;

  const ReferredUsersSuccess({required this.listUsers});

  @override
  List<Object> get props => [listUsers];
}

class ReferredUsersError extends ReferredState{
  final String message;
  const ReferredUsersError({required this.message});
  
  @override
  List<Object> get props => [message];
}

