import 'package:tdd/core/usecase/usecase.dart';
import 'package:tdd/core/utils/typedef.dart';
import 'package:tdd/src/authentication/domain/entities/User.dart';

import '../repositories/auth_repo.dart';

class GetUser extends UseCaseWithoutParams<List<User>> {
  GetUser(this._repository);
  final AuthenticationRepo _repository;
  
  @override
  ResultFuture<List<User>> call() async => _repository.getUser();
}
