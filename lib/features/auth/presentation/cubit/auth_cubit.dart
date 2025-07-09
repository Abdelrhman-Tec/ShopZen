import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:my_app/config/cache/cache_helper.dart';
import 'package:my_app/core/errors/error_message_firebase.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  /// Create new user
  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    emit(AuthLoading());
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Send verification email
      await userCredential.user?.sendEmailVerification();

      // Sign out immediately
      await FirebaseAuth.instance.signOut();

      emit(AuthError(
        message: 'Account created. Please verify your email before logging in.',
      ));
    } on FirebaseAuthException catch (e) {
      emit(AuthError(
        message: ErrorMessageFirebase.getErrorMessageFromCode(e.code),
      ));
    } catch (e) {
      emit(AuthError(
          message: 'An unexpected error occurred. Please try again.'));
    }
  }

  /// Sign in with email and password
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(AuthLoading());
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = userCredential.user;

      if (user != null && user.emailVerified) {
        final hasLoggedInBefore =
            CacheHelper().getBool(key: 'has_logged_in_before') ?? false;

        if (!hasLoggedInBefore) {
          await CacheHelper().set(key: 'has_logged_in_before', value: true);
        }
        emit(AuthSuccess(userCredential: userCredential));
      } else {
        await FirebaseAuth.instance.signOut();
        emit(AuthError(
          message: 'Please verify your email before logging in.',
        ));
      }
    } on FirebaseAuthException catch (e) {
      emit(AuthError(
        message: ErrorMessageFirebase.getErrorMessageFromCode(e.code),
      ));
    } catch (e) {
      emit(AuthError(message: 'An unexpected error occurred.'));
    }
  }

  /// Send email verification
  Future<void> sendEmailVerification() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null && !user.emailVerified) {
      await user.sendEmailVerification();
    }
  }

  /// Sign out
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    emit(AuthSignedOut());
  }
}
