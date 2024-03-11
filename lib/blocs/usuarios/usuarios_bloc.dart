import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeleton/models/general_response.dart';
import 'package:skeleton/models/user.dart';
import 'package:skeleton/repositories/usuarios_repository.dart';

part 'usuarios_event.dart';
part 'usuarios_state.dart';

class UsersBloc
    extends Bloc<UsuariosPlataformaEvent, UsersState> {

      final UsuariosRepository usuariosPlataformaRepository;

  UsersBloc({required this.usuariosPlataformaRepository}) : super(UsuariosInitial()) {
  on<InitUsers>(_initUsers);
  }
  _initUsers(InitUsers event, Emitter<UsersState> emit) async{
    emit(UsersLoading());
    final result = await usuariosPlataformaRepository.getAllInternalUsers();

    if(result is ResponseSuccess){
      emit(UsersSuccess(listUsers: result.data));
    }else{
      emit(const UsersError(message: "Error inesperado"));
    }
  }
}
