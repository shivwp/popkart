// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/sign_in/data/sign_in_repository.dart' as _i3;
import '../../features/auth/sign_in/presentation/ui/pages/sign_in_controller.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.SignInRepository>(() => _i3.SignInRepository());
  gh.factory<_i4.SignInController>(
      () => _i4.SignInController(get<_i3.SignInRepository>()));
  return get;
}
