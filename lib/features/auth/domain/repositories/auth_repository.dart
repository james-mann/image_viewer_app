import 'package:dartz/dartz.dart';
import 'package:image_viewer/core/core.dart';
import 'package:image_viewer/features/auth/auth.dart';

abstract class AuthRepository {
  Future<Either<Failure, Login>> login(LoginParams loginParams);
}
