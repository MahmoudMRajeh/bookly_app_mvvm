import 'package:alarm_app/core/utils/dio_servieces.dart';
import 'package:alarm_app/features/home/data/repositories/home_repo.dart';
import 'package:alarm_app/features/home/data/repositories/home_repo_impl.dart';
import 'package:alarm_app/features/home/presentaion/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:alarm_app/features/home/presentaion/manager/newst%20books%20cubit/newest_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl=GetIt.instance;

initHome(){
  //! Cubits
  sl.registerFactory(() => FeaturedBooksCubit(sl()));
  sl.registerFactory(() => NewestBooksCubit(sl()));

  //! repositories
  sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(dioServices: sl()));

  //!  external
  Dio dio= Dio();
  sl.registerLazySingleton(() => DioServices(dio));
}
