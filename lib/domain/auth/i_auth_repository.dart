import 'package:amtiss/domain/core/models/token_result.dart';
import 'package:fpdart/fpdart.dart';

import '../core/auth_failures/auth_failures.dart';


abstract class IAuthRepository{
  Future<Either<AuthFailure,Unit>> checkAuth();
  Future<Either<AuthFailure, Unit>> loggedIn(TokenResultElement user);
  Future<Either<AuthFailure,Unit>> loggedOut();
}