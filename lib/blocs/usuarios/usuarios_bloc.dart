import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeleton/models/auth_response.dart';
import 'package:skeleton/models/general_response.dart';
import 'package:skeleton/repositories/usuarios_repository.dart';

part 'usuarios_event.dart';
part 'usuarios_state.dart';

class UsuariosPlataformaBloc
    extends Bloc<UsuariosPlataformaEvent, UsuariosPlataformaState> {

      final UsuariosRepository usuariosPlataformaRepository;

  UsuariosPlataformaBloc({required this.usuariosPlataformaRepository}) : super(UsuariosInitial()) {
  on<InitPlataformaUsers>(_initUsers);
  }
  _initUsers(InitPlataformaUsers event, Emitter<UsuariosPlataformaState> emit) async{
    emit(UsuariosPlataformaLoading());
    final result = await usuariosPlataformaRepository.getAllInternalUsers();

    if(result is ResponseSuccess){
      emit(UsuariosPlataformaSuccess(listUsers: result.data));
    }else{
      emit(const UsuariosPlataformaError(message: "Error inesperado"));
    }
  }
}
