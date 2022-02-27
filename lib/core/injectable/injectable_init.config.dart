// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/2_step_verification/data/repository/otp_verification_repository.dart'
    as _i6;
import '../../features/auth/2_step_verification/presentation/ui/pages/two_step_verification_Controller.dart'
    as _i12;
import '../../features/auth/forgot_password/data/repository/forget_password_repository.dart'
    as _i3;
import '../../features/auth/forgot_password/presentation/ui/pages/forget_password_controller.dart'
    as _i4;
import '../../features/auth/one_time_password/data/repository/one_time_password_repository.dart'
    as _i7;
import '../../features/auth/one_time_password/presentation/ui/pages/one_time_password_controller.dart'
    as _i14;
import '../../features/auth/reset_password/data/repository/reset_password_repository.dart'
    as _i9;
import '../../features/auth/reset_password/presentation/ui/pages/reset_password_controller.dart'
    as _i16;
import '../../features/auth/sign_in/data/sign_in_repository.dart' as _i10;
import '../../features/auth/sign_in/presentation/ui/pages/sign_in_controller.dart'
    as _i17;
import '../../features/auth/sign_up/data/repository/sign_up_repository.dart'
    as _i11;
import '../../features/auth/sign_up/presentation/ui/pages/signup_controller.dart'
    as _i18;
import '../../features/grocery_list_creation/presentation/ui/pages/grocery_list_creation_controller.dart'
    as _i13;
import '../../features/grocery_list_creation/repository/gorcery_list_repository.dart'
    as _i5;
import '../../features/settings_features/privacy_policy/data/repository/privacy_policy_repository.dart'
    as _i8;
import '../../features/settings_features/privacy_policy/presentation/ui/pages/privacy_policy_controller.dart'
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
  gh.factory<_i5.GroceryListRepository>(() => _i5.GroceryListRepository());
  gh.factory<_i6.OTPVerificationRepository>(
      () => _i6.OTPVerificationRepository());
  gh.factory<_i7.OnetimePasswordRepository>(
      () => _i7.OnetimePasswordRepository());
  gh.factory<_i8.PrivacyPolicyRepository>(() => _i8.PrivacyPolicyRepository());
  gh.factory<_i9.ResetPasswordRepository>(() => _i9.ResetPasswordRepository());
  gh.factory<_i10.SignInRepository>(() => _i10.SignInRepository());
  gh.factory<_i11.SignUpRepository>(() => _i11.SignUpRepository());
  gh.factory<_i12.TwoStepVerificationController>(
      () => _i12.TwoStepVerificationController());
  gh.factory<_i13.GroceryListCreationController>(() =>
      _i13.GroceryListCreationController(get<_i5.GroceryListRepository>()));
  gh.factory<_i14.OnetimePasswordController>(() =>
      _i14.OnetimePasswordController(get<_i7.OnetimePasswordRepository>()));
  gh.factory<_i15.PrivacyPolicyController>(
      () => _i15.PrivacyPolicyController(get<_i8.PrivacyPolicyRepository>()));
  gh.factory<_i16.ResetPasswordController>(
      () => _i16.ResetPasswordController(get<_i9.ResetPasswordRepository>()));
  gh.factory<_i17.SignInController>(
      () => _i17.SignInController(get<_i10.SignInRepository>()));
  gh.factory<_i18.SignUpController>(
      () => _i18.SignUpController(get<_i11.SignUpRepository>()));
  return get;
}
