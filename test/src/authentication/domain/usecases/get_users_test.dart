import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd/src/authentication/domain/entities/user.dart';
import 'package:tdd/src/authentication/domain/repositories/authentication_repository.dart';
import 'package:tdd/src/authentication/domain/usecases/create_user.dart';
import 'package:tdd/src/authentication/domain/usecases/get_users.dart';

import 'authentication_repository.mock.dart';

void main() {
  late GetUsers usecase;
  late AuthenticationRepository repository;
  setUpAll(() {
    repository = MockAuthRepo();
    usecase = GetUsers(repository);
  });

  const tResponse = [User.empty()];
  test('should call the [AuthRepo.GetUsers] and return [List<Users>]',
      () async {
    //Arrange
    //STUB
    when(
      () => repository.getUsers(),
    ).thenAnswer((_) async => const Right(tResponse));

    //Act
    final result = await usecase();
    expect(result, equals(const Right<dynamic, List<User>>(tResponse)));
    verify(() => repository.getUsers()).called(1);
    verifyNoMoreInteractions(repository);
  });
}
