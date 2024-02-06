part of 'usuarios_bloc.dart';

sealed class UsuariosPlataformaState extends Equatable {
  const UsuariosPlataformaState();

  @override
  List<Object> get props => [];
}

final class UsuariosInitial extends UsuariosPlataformaState {}

class UsuariosPlataformaLoading extends UsuariosPlataformaState {}

class UsuariosPlataformaSuccess extends UsuariosPlataformaState {
  final List<Usuario> listUsers;

  const UsuariosPlataformaSuccess({required this.listUsers});

  @override
  List<Object> get props => [listUsers];
}

class UsuariosPlataformaError extends UsuariosPlataformaState{
  final String message;
  const UsuariosPlataformaError({required this.message});
  
  @override
  List<Object> get props => [message];
}
