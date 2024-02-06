import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeleton/models/auth_response.dart';
import 'package:skeleton/models/general_response.dart';
import 'package:skeleton/repositories/usuarios_repository.dart';

part 'all_users_event.dart';
part 'all_users_state.dart';

class AllUsersBloc extends Bloc<AllUsersEvent, AllUsersState> {
  final UsuariosRepository usuariosPlataformaRepository;
  AllUsersBloc({required this.usuariosPlataformaRepository})
      : super(AllUsersInitial()) {
    on<InitAllUsers>(_initUsers);
  }

  _initUsers(InitAllUsers event, Emitter<AllUsersState> emit) async {
    emit(AllUsersLoading());
    final result = await usuariosPlataformaRepository.getAllUsers();

    if (result is ResponseSuccess) {
      emit(AllUsersSuccess(listUsers: result.data));
    } else {
      emit(const AllUsersError(message: "Error inesperado"));
    }
  }
}
