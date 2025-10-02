//For return custom type of login result
class LoginResult {
    final bool success;
    final String message;
    const LoginResult({required this.success, required this.message});

    @override
    String toString(){
        return "LoginResult(success: $success, message: $message)";
    }
}
