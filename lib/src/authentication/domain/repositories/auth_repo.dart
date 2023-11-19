
import '../entities/User.dart';

abstract class AuthenticationRepo {
  const AuthenticationRepo();

  Future<void> createUser({
    required createdAt,
    required name,
    required id,
    required avatar,
  });
  Future<(Exception, List<User>)> getUser();
}
