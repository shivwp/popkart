// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/2_step_verification/data/repository/otp_verification_repository.dart'
    as _i5;
import '../../features/auth/forgot_password/data/repository/forget_password_repository.dart'
    as _i3;
import '../../features/auth/forgot_password/presentation/ui/pages/forget_password_controller.dart'
    as _i4;
import '../../features/auth/one_time_password/data/repository/one_time_password_repository.dart'
    as _i6;
import '../../features/auth/one_time_password/presentation/ui/pages/one_time_password_controller.dart'
    as _i11;
import '../../features/auth/reset_password/data/repository/reset_password_repository.dart'
    as _i7;
import '../../features/auth/reset_password/presentation/ui/pages/reset_password_controller.dart'
    as _i12;
import '../../features/auth/sign_in/data/sign_in_repository.dart' as _i8;
import '../../features/auth/sign_in/presentation/ui/pages/sign_in_controller.dart'
    as _i13;
import '../../features/auth/sign_up/data/repository/sign_up_repository.dart'
    as _i9;
import '../../features/auth/sign_up/presentation/ui/pages/signup_controller.dart'
    as _i14;
import '../../features/settings_features/terms_conditions/data/repository/terms_conditions_repository.dart'
    as _i10;
import '../../features/settings_features/terms_conditions/presentation/ui/pages/terms_conditions_controller.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ForgetPasswordRepository>(
      () => _i3.ForgetPasswordRepository());
  gh.factory<_i4.ForgetpasswordController>(
      () => _i4.ForgetpasswordController(get<_i3.ForgetPasswordRepository>()));
  gh.factory<_i5.OTPVerificationRepository>(
      () => _i5.OTPVerificationRepository());
  gh.factory<_i6.OnetimePasswordRepository>(
      () => _i6.OnetimePasswordRepository());
  gh.factory<_i7.ResetPasswordRepository>(() => _i7.ResetPasswordRepository());
  gh.factory<_i8.SignInRepository>(() => _i8.SignInRepository());
  gh.factory<_i9.SignUpRepository>(() => _i9.SignUpRepository());
  gh.factory<_i10.TermsConditionsRepository>(
      () => _i10.TermsConditionsRepository());
  gh.factory<_i11.OnetimePasswordController>(() =>
      _i11.OnetimePasswordController(get<_i6.OnetimePasswordRepository>()));
  gh.factory<_i12.ResetPasswordController>(
      () => _i12.ResetPasswordController(get<_i7.ResetPasswordRepository>()));
  gh.factory<_i13.SignInController>(
      () => _i13.SignInController(get<_i8.SignInRepository>()));
  gh.factory<_i14.SignUpController>(
      () => _i14.SignUpController(get<_i9.SignUpRepository>()));
  gh.factory<_i15.TermsConditionsController>(() =>
      _i15.TermsConditionsController(get<_i10.TermsConditionsRepository>()));
  return get;
}
