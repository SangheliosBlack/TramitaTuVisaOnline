part of 'all_users_bloc.dart';

sealed class AllUsersState extends Equatable {
  const AllUsersState();

  @override
  List<Object> get props => [];
}

final class AllUsersInitial extends AllUsersState {}

class AllUsersLoading extends AllUsersState {}

class AllUsersSuccess extends AllUsersState {
  final List<Usuario> listUsers;

  const AllUsersSuccess({required this.listUsers});

  @override
  List<Object> get props => [listUsers];
}

class AllUsersError extends AllUsersState {
  final String message;
  const AllUsersError({required this.message});

  @override
  List<Object> get props => [message];
}
