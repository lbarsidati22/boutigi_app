part of 'login_cubit.dart';

sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLeading extends LoginState {}

final class LoginSuccess extends LoginState {
  final UserEntity userEntity;
  LoginSuccess({required this.userEntity});
}

final class LoginFaulier extends LoginState {
  final String message;
  LoginFaulier({required this.message});
}
