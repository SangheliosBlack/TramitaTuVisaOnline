part of 'referred_bloc.dart';

sealed class ReferredUsersEvent extends Equatable {
  const ReferredUsersEvent();

  @override
  List<Object> get props => [];
}

class InitialReferredUsers extends ReferredUsersEvent{
  @override
  List<Object> get props => [];
}
