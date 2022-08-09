import 'package:fpdart/fpdart.dart';
import 'package:amtiss/domain/core/models/token_result.dart';

import '../core/result_state.dart';

abstract class ILoginRepository {
  Future<Either<ResultState, TokenResultElement>> login({
    required String username,
    required String companyOrIp,
    required String password,
  });
}
