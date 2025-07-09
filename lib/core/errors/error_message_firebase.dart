class ErrorMessageFirebase {
  static String getErrorMessageFromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return 'The email address is not valid.';
      case 'user-disabled':
        return 'This user account has been disabled.';
      case 'user-not-found':
        return 'No user found with this email.';
      case 'wrong-password':
        return 'Incorrect password.';
      case 'email-already-in-use':
        return 'An account already exists for that email.';
      case 'operation-not-allowed':
        return 'Email/password accounts are not enabled.';
      case 'weak-password':
        return 'The password provided is too weak.';
      case 'too-many-requests':
        return 'Too many attempts. Try again later.';
      case 'invalid-credential':
        return 'The credential is invalid or has expired.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with a different sign-in method.';
      case 'invalid-verification-code':
        return 'The verification code is invalid.';
      case 'invalid-verification-id':
        return 'The verification ID is invalid.';
      case 'network-request-failed':
        return 'Network error. Please check your connection.';
      case 'credential-already-in-use':
        return 'This credential is already associated with another account.';
      case 'requires-recent-login':
        return 'This operation requires recent login. Please log in again.';
      case 'missing-verification-code':
        return 'The verification code is missing.';
      case 'missing-verification-id':
        return 'The verification ID is missing.';
      case 'expired-action-code':
        return 'The action code has expired.';
      case 'invalid-action-code':
        return 'The action code is invalid.';
      case 'invalid-phone-number':
        return 'The phone number is invalid.';
      case 'app-not-authorized':
        return 'This app is not authorized to use Firebase Authentication.';
      case 'expired-session':
        return 'The session has expired. Please sign in again.';
      case 'internal-error':
        return 'An internal error occurred. Please try again.';
      case 'invalid-custom-token':
        return 'The custom token format is incorrect.';
      case 'custom-token-mismatch':
        return 'The custom token corresponds to a different audience.';
      case 'user-token-expired':
        return 'User token has expired. Please log in again.';
      case 'web-context-cancelled':
        return 'The web context was cancelled. Please try again.';
      case 'popup-closed-by-user':
        return 'The popup was closed before completing the sign in.';
      case 'unauthorized-domain':
        return 'This domain is not authorized for OAuth operations.';
      default:
        return 'An unexpected error occurred. Please try again.';
    }
  }
}
