import 'package:dartz/dartz.dart';
import 'package:mentoria_clean_arch/src/features/login/data/models/login_response_model.dart';
import 'package:mentoria_clean_arch/src/features/login/domain/entities/login.dart';

abstract class ILoginDataSource {
  Future<Either<Exception, LoginResponseModel>> loginWithEmail(Login login);
}
