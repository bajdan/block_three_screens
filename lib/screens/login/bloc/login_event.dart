abstract class LoginEvent{}

class LoginDataSendingEvent extends LoginEvent{
  final String email;
  final String password;
  LoginDataSendingEvent({required this.email, required this.password});
}