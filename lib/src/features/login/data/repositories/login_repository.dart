import 'package:mentoria_clean_arch/src/features/login/data/models/login_response_model.dart';
import 'package:mentoria_clean_arch/src/features/login/data/sources/interfaces/i_login_data_source.dart';
import 'package:mentoria_clean_arch/src/features/login/domain/entities/login.dart';
import 'package:dartz/dartz.dart';
import 'package:mentoria_clean_arch/src/features/login/domain/repositories/i_login_repository.dart';

class LoginRepository implements ILoginRepository {
  final ILoginDataSource _loginDataSource;

  LoginRepository(this._loginDataSource);
  @override
  Future<Either<Exception, LoginResponseModel>> loginWithEmail(
      Login login) async {
    final response = await _loginDataSource.loginWithEmail(login);
    return response.fold((l) => Left(l), (r) => Right(r));
  }
}
