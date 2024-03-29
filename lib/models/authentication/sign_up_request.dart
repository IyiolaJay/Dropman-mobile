class SignUpRequest {
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String password;

  SignUpRequest({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName' : firstName,
      'lastName' : lastName,
      'email': email,
      'phoneNumber' : phoneNumber,
      'password': password,
    };
  }
}
