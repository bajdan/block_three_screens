class LoginRepo{
  static bool authorization(String email, String password){
    if(email == 'flutter.school@gmail.com' && password == 'Bestee5') return true;
    else return false;
  }
}