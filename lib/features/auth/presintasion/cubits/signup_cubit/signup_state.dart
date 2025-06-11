part of 'signup_cubit.dart';

sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupSuccess extends SignupState {
  final UserEntity userEntity;

  SignupSuccess({required this.userEntity});
}

final class SignupLeading extends SignupState {}

final class SignupFaulier extends SignupState {
  final String message;

  SignupFaulier({required this.message});
}
