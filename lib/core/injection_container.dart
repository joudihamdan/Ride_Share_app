import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:ride_share_app/core/networks/dio_client.dart';
import 'package:ride_share_app/core/networks/internet_check.dart';
import 'package:ride_share_app/features/Authentication/data/datasources/auth_service.dart';
import 'package:ride_share_app/features/Authentication/data/repositories/auth_repository_imp.dart';
import 'package:ride_share_app/features/Authentication/domain/repositories/auth_repository.dart';
import 'package:ride_share_app/features/Authentication/domain/usecases/login_usecase.dart';
import 'package:ride_share_app/features/Authentication/domain/usecases/logout_usecase.dart';
import 'package:ride_share_app/features/Authentication/domain/usecases/signup_usecase.dart';
import 'package:ride_share_app/features/Authentication/presentation/bloc/Login/Login_bloc.dart';
import 'package:ride_share_app/features/Authentication/presentation/bloc/Signup/Signup_bloc.dart';
import 'package:ride_share_app/features/Map/data/datasources/hub_local_data.dart';
import 'package:ride_share_app/features/Map/data/datasources/hub_service.dart';
import 'package:ride_share_app/features/Map/data/repositories/hub_repository_imp.dart';
import 'package:ride_share_app/features/Map/domain/repositories/hubs_repository.dart';
import 'package:ride_share_app/features/Map/domain/usecases/get_all_hubs.dart';
import 'package:ride_share_app/features/Map/presentation/bloc/hub_bloc.dart';
import 'package:ride_share_app/features/Wallet/data/datasources/wallet_remote_data.dart';
import 'package:ride_share_app/features/Wallet/data/repositories/wallet_repository_imp.dart';
import 'package:ride_share_app/features/Wallet/domain/repositories/wallet_repository.dart';
import 'package:ride_share_app/features/Wallet/domain/usecases/add_money.dart';
import 'package:ride_share_app/features/Wallet/domain/usecases/create_account.dart';
import 'package:ride_share_app/features/Wallet/domain/usecases/get_my_wallet.dart';
import 'package:ride_share_app/features/Wallet/domain/usecases/get_valid_code.dart';
import 'package:ride_share_app/features/Wallet/presentation/bloc/wallet_bloc.dart';
import 'package:ride_share_app/features/bicycle/data/datasources/bicycle_local_data.dart';
import 'package:ride_share_app/features/bicycle/data/datasources/bicycle_remote_data.dart';
import 'package:ride_share_app/features/bicycle/data/repositories/bicycle_repo_imp.dart';
import 'package:ride_share_app/features/bicycle/domain/repositories/bicycle_repository.dart';
import 'package:ride_share_app/features/bicycle/domain/usecases/get_all_categories.dart';
import 'package:ride_share_app/features/bicycle/domain/usecases/get_bicycle_by_id.dart';
import 'package:ride_share_app/features/bicycle/domain/usecases/get_hub_content.dart';
import 'package:ride_share_app/features/bicycle/presentation/bloc/bicycle_bloc.dart';
import 'package:ride_share_app/features/reversation/data/datasources/reservation_local_data.dart';
import 'package:ride_share_app/features/reversation/data/datasources/reservation_remote_data.dart';
import 'package:ride_share_app/features/reversation/domain/repositories/reservation_repository.dart';
import 'package:ride_share_app/features/reversation/domain/usecases/create_reservation.dart';
import 'package:ride_share_app/features/reversation/domain/usecases/get_reservation_by_id.dart';
import 'package:ride_share_app/features/reversation/domain/usecases/reservation_payment.dart';
import 'package:ride_share_app/features/reversation/presentation/Bloc/reservation_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/reversation/data/repositories/reservation_repository_imp.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //bloc
  sl.registerFactory(() => LoginBloc(loginUsecase: sl(), logoutUsecase: sl()));
  sl.registerFactory(() => SignupBloc(sl()));
  sl.registerFactory(() => HubBloc(useCase: sl()));
  sl.registerFactory(() => BicycleBloc(sl(), sl(), sl()));
  sl.registerFactory(() => WalletBloc(sl(), sl(), sl(), sl()));
  sl.registerFactory(() => ReservationBloc(sl(), sl(), sl()));

  //usecase
  sl.registerLazySingleton(() => LoginUsecase(repository: sl()));
  sl.registerLazySingleton(() => SignupUsecase(repository: sl()));
  sl.registerLazySingleton(() => LogoutUsecase(repository: sl()));
  sl.registerLazySingleton(() => GetAlHubsUseCase(hubsRepository: sl()));
  sl.registerLazySingleton(() => GetBicycleByIdUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetAllCategoriesUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetHubContentUseCase(repository: sl()));
  sl.registerLazySingleton(() => CreateAccountUseCase(repository: sl()));
  sl.registerLazySingleton(() => AddMoneyUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetMyWalletUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetValidCodeUseCase(repository: sl()));
  sl.registerLazySingleton(() => CreateReservationUseCase(repository: sl()));
  sl.registerLazySingleton(() => ReservationPaymentUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetReservationByIdUseCase(repository: sl()));

  ///repo
  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImp(internetCheck: sl(), service: sl()));
  sl.registerLazySingleton<HubsRepository>(() => HubRepositoryImp(
      internetCheck: sl(), hubService: sl(), hubLocalData: sl()));
  sl.registerLazySingleton<BicycleRepository>(() =>
      BicycleRepoImp(localData: sl(), remoteData: sl(), internetCheck: sl()));
  sl.registerLazySingleton<WalletRepository>(
      () => WalletRepositoryImp(internetCheck: sl(), remoteData: sl()));
  sl.registerLazySingleton<ReservationRepository>(() =>
      ReservationRepositoryImp(
          internetCheck: sl(), remoteData: sl(), localData: sl()));

  //core
  sl.registerLazySingleton<InternetCheck>(
      () => InternetCheckImp(internetConnectionChecker: sl()));
  sl.registerSingleton<DioClient>(DioClient());

  //service
  sl.registerLazySingleton<AuthService>(() => AuthServiceImp());
  sl.registerLazySingleton<HubService>(() => HubServiceImp());
  sl.registerLazySingleton<BicycleRemoteData>(
      () => BicycleRemoteDataImpWithDio(dio: sl(), response: sl()));
  sl.registerLazySingleton<WalletRemoteData>(() => WalletRemoteDataImp());
  sl.registerLazySingleton<ReservationRemoteData>(
      () => ReseervationRemoteDataImp());

  //local
  sl.registerLazySingleton<HubLocalData>(() => HubLocalDataImp());
  sl.registerLazySingleton<ReservationLocalData>(
      () => ReservationLocalDataImp(sharedPreferences: sl()));

  sl.registerLazySingleton<BicycleLocalData>(
      () => BicycleLocalDataImp(sharedPreferences: sl()));

  //external
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => Response(requestOptions: sl()));
  sl.registerLazySingleton(() => RequestOptions());
  sl.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());
}
