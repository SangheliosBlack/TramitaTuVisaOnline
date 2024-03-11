part of 'usuarios_bloc.dart';

sealed class UsersState extends Equatable {
  const UsersState();

  @override
  List<Object> get props => [];
}

final class UsuariosInitial extends UsersState {}

class UsersLoading extends UsersState {}

class UsersSuccess extends UsersState {
  final List<Usuario> listUsers;

  const UsersSuccess({required this.listUsers});

  @override
  List<Object> get props => [listUsers];
}

class UsersError extends UsersState{
  final String message;
  const UsersError({required this.message});
  
  @override
  List<Object> get props => [message];
}
