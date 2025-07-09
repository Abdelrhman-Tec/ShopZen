part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final UserCredential userCredential;

  AuthSuccess({required this.userCredential});
}

final class AuthError extends AuthState {
  final String message;

  AuthError({required this.message});
}

final class AuthSignedOut extends AuthState {}
