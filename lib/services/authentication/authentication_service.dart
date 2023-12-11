// import "package:dio/dio.dart";

import '../../models/authentication/sign_in_request_model.dart';
import '../../models/authentication/sign_up_request.dart';

class AuthenticationService{


  const AuthenticationService();

  Future<bool> signIn(SignInRequest signInBody)async{
    try{

      // implement sign in feature with server;
        return true;
    }catch(error){
       print('Error signing in: $error');
      return false;
    }
  }

  Future<bool> signUp(SignUpRequest signInBody)async{
    try{

      // implement sign up feature with server;
        return true;
    }catch(error){
       print('Error signing in: $error');
      return false;
    }
  }
}