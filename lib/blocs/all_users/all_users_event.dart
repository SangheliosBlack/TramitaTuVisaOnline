part of 'all_users_bloc.dart';

sealed class AllUsersEvent extends Equatable {
  const AllUsersEvent();

  @override
  List<Object> get props => [];
}

class InitAllUsers extends AllUsersEvent {
  @override
  List<Object> get props => [];
}
