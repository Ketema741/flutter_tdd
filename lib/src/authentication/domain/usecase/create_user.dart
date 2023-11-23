import 'package:equatable/equatable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../repositories/auth_repo.dart';

class CreateUser extends UseCaseWithParams<void, CreateUserParams> {
  const CreateUser(this._repository);

  final AuthenticationRepo _repository;

  @override
  ResultVoid call(CreateUserParams params) async =>
      await _repository.createUser(
        name: params.name,
        avatar: params.avatar,
        createdAt: params.createdAt,
      );
}

class CreateUserParams extends Equatable {
  const CreateUserParams({
    required this.name,
    required this.avatar,
    required this.createdAt,
  });
  final String name;
  final String avatar;
  final String createdAt;

  @override
  List<Object?> get props => [name, avatar, createdAt];
}
