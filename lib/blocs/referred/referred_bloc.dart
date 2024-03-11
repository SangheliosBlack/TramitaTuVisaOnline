import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeleton/models/general_response.dart';
import 'package:skeleton/models/user.dart';
import 'package:skeleton/repositories/usuarios_repository.dart';

part 'referred_event.dart';
part 'referred_state.dart';

class ReferredBloc extends Bloc<ReferredUsersEvent, ReferredState> {
  final UsuariosRepository usuariosRepository;
  ReferredBloc({required this.usuariosRepository}) : super(ReferredInitial()) {
    on<InitialReferredUsers>(_initUsers);
  }
  _initUsers(InitialReferredUsers event, Emitter<ReferredState> emit) async{
    emit(ReferredUsersLoading());
    final result = await usuariosRepository.getReferredUsers();

    if(result is ResponseSuccess){
      emit(ReferredUsersSuccess(listUsers: result.data));
    }else{
      emit(const ReferredUsersError(message: "Error inesperado"));
    }
  }
}
