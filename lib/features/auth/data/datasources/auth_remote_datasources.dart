import 'package:dartz/dartz.dart';
import 'package:image_viewer/core/core.dart';
import 'package:image_viewer/features/auth/auth.dart';

abstract class AuthRemoteDatasource {
  Future<Either<Failure, LoginResponse>> login(LoginParams loginParams);
}

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  AuthRemoteDatasourceImpl();

  @override
  Future<Either<Failure, LoginResponse>> login(LoginParams loginParams) async {
    /// Simulate login from API
    const email = "test@test.com";
    const password = "password123";

    /// Add some delay
    await Future.delayed(const Duration(seconds: 1));

    if (loginParams.email != email || loginParams.password != password) {
      return const Left(ServerFailure("Invalid email or password"));
    } else {
      return const Right(LoginResponse(token: "dummy token"));
    }
  }
}
