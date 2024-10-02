import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:ride_share_app/core/networks/dio_client.dart';
import 'package:ride_share_app/core/networks/internet_check.dart';
import 'package:ride_share_app/features/Authentication/data/datasources/auth_service.dart';
import 'package:ride_share_app/features/Authentication/data/repositories/auth_repository_imp.dart';
import 'package:ride_share_app/features/Authentication/domain/repositories/auth_repository.dart';
import 'package:ride_share_app/features/Authentication/domain/usecases/login_usecase.dart';
import 'package:ride_share_app/features/Authentication/presentation/bloc/Login/Login_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //bloc
  sl.registerFactory(() => LoginBloc(loginUsecase: sl()));
  //usecase
  sl.registerLazySingleton(() => LoginUsecase(repository: sl()));

  ///repo
  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImp(internetCheck: sl(), service: sl()));
  //core
  sl.registerLazySingleton<InternetCheck>(
      () => InternetCheckImp(internetConnectionChecker: sl()));

sl.registerLazySingleton<DioClient>(() => DioClient()); 

  //service
  sl.registerLazySingleton<AuthService>(() => AuthServiceImp());

  //external
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
