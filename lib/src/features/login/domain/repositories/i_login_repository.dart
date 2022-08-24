import 'package:dartz/dartz.dart';
import 'package:mentoria_clean_arch/src/features/login/domain/entities/login.dart';

abstract class ILoginRepository {
  Future<Either<Exception, Login>> loginWithEmail(Login login);
}
