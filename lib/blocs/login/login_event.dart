abstract class LoginEvent {}

class LoginSumitted extends LoginEvent {
  final String email;
  final String password;
  LoginSumitted({required this.email, required this.password});
}
