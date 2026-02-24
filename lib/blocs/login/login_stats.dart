abstract class LoginStats {}

class LoginInitial extends LoginStats {}

class LoginLoading extends LoginStats {}

class LoginSuccess extends LoginStats {}

class LoginFailure extends LoginStats {
  final String message;
  LoginFailure(this.message);
}
