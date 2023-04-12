// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:amana_task/config/di/module/dio.dart' as _i13;
import 'package:amana_task/config/di/module/shared_preferences.dart' as _i14;
import 'package:amana_task/features/auth/data/datasources/local/auth_local_datasource.dart'
    as _i6;
import 'package:amana_task/features/auth/data/datasources/remote/auth_api_service.dart'
    as _i5;
import 'package:amana_task/features/auth/data/datasources/remote/auth_datasource.dart'
    as _i7;
import 'package:amana_task/features/auth/data/repository/auth_repository_impl.dart'
    as _i9;
import 'package:amana_task/features/auth/domain/repositories/auth_repository.dart'
    as _i8;
import 'package:amana_task/features/auth/domain/usecases/get_current_user_use_case.dart'
    as _i10;
import 'package:amana_task/features/auth/domain/usecases/login_use_case.dart'
    as _i11;
import 'package:amana_task/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart'
    as _i12;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appDioInject = _$AppDioInject();
    final injectionModule = _$InjectionModule();
    gh.factory<_i3.Dio>(() => appDioInject.dio);
    await gh.factoryAsync<_i4.SharedPreferences>(
      () => injectionModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i5.AuthApiService>(_i5.AuthApiService(gh<_i3.Dio>()));
    gh.singleton<_i6.AuthLocalDatasource>(
        _i6.AuthLocalDatasourceImpl(gh<_i4.SharedPreferences>()));
    gh.factory<_i7.AuthRemoteDatasource>(
        () => _i7.AuthRemoteDatasourceImpl(gh<_i5.AuthApiService>()));
    gh.factory<_i8.AuthRepository>(() => _i9.AuthRepositoryImpl(
          gh<_i7.AuthRemoteDatasource>(),
          gh<_i6.AuthLocalDatasource>(),
        ));
    gh.factory<_i10.GetCurrentUserUseCase>(
        () => _i10.GetCurrentUserUseCase(gh<_i8.AuthRepository>()));
    gh.factory<_i11.LoginUseCase>(
        () => _i11.LoginUseCase(gh<_i8.AuthRepository>()));
    gh.factory<_i12.AuthCubit>(() => _i12.AuthCubit(
          gh<_i11.LoginUseCase>(),
          gh<_i10.GetCurrentUserUseCase>(),
        ));
    return this;
  }
}

class _$AppDioInject extends _i13.AppDioInject {}

class _$InjectionModule extends _i14.InjectionModule {}
