import 'package:dartz/dartz.dart';
import 'package:mentoria_clean_arch/src/features/login/domain/entities/login.dart';
import 'package:mentoria_clean_arch/src/features/login/domain/repositories/i_login_repository.dart';

class LoginWithEmailUseCase {
  final ILoginRepository _loginRepository;

  LoginWithEmailUseCase(this._loginRepository);

  Future<Either<Exception, Login>> call(Login login) async {
    final response = await _loginRepository.loginWithEmail(login);
    return response.fold((l) => Left(l), (r) => Right(r));
  }
}
