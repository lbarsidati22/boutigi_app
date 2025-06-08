import 'package:boutigi_app/features/auth/domain/entites/user_entity.dart';
import 'package:boutigi_app/features/auth/domain/repos/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;
  Future<void> createAccountWithAndPassword(
    String email,
    String password,
    String name,
  ) async {
    emit(SignupLeading());
    final result = await authRepo.createUserWithEmailAndPaasword(
      email,
      password,
      name,
    );
    result.fold(
      (failure) => emit(SignupFaulier(message: failure.message)),
      (userEntity) => emit(SignupSuccess(userEntity: userEntity)),
    );
  }
}
