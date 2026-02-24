abstract class SigupEvent {}

class SignupSubmitted extends SigupEvent {
  final String userName;
  final String email;
  final String password;
  final String confremPassword;
  SignupSubmitted({
    required this.email,
    required this.password,
    required this.userName,
    required this.confremPassword,
  });
}
