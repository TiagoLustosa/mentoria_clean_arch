import 'package:mentoria_clean_arch/src/features/login/data/models/login_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:mentoria_clean_arch/src/features/login/data/sources/interfaces/i_login_data_source.dart';
import 'package:mentoria_clean_arch/src/features/login/domain/entities/login.dart';

class FirebaseLoginWithEmail implements ILoginDataSource {
  @override
  Future<Either<Exception, LoginResponseModel>> loginWithEmail(
      Login login) async {
    final response = await Future.delayed(const Duration(seconds: 1));
    return response.fold((l) => Left(l), (r) => Right(r as LoginResponseModel));
  }
}
