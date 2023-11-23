import 'package:tdd/core/utils/typedef.dart';
import '../entities/User.dart';

abstract class AuthenticationRepo {
  const AuthenticationRepo();

  ResultVoid createUser({
    required createdAt,
    required name,
    required avatar,
  });

  ResultFuture<List<User>> getUser();
}
