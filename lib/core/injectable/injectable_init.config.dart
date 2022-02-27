// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/2_step_verification/data/repository/otp_verification_repository.dart'
    as _i6;
import '../../features/auth/forgot_password/data/repository/forget_password_repository.dart'
    as _i4;
import '../../features/auth/forgot_password/presentation/ui/pages/forget_password_controller.dart'
    as _i5;
import '../../features/auth/one_time_password/data/repository/one_time_password_repository.dart'
    as _i7;
import '../../features/auth/one_time_password/presentation/ui/pages/one_time_password_controller.dart'
    as _i15;
import '../../features/auth/reset_password/data/repository/reset_password_repository.dart'
    as _i9;
import '../../features/auth/reset_password/presentation/ui/pages/reset_password_controller.dart'
    as _i17;
import '../../features/auth/sign_in/data/sign_in_repository.dart' as _i11;
import '../../features/auth/sign_in/presentation/ui/pages/sign_in_controller.dart'
    as _i19;
import '../../features/auth/sign_up/data/repository/sign_up_repository.dart'
    as _i12;
import '../../features/auth/sign_up/presentation/ui/pages/signup_controller.dart'
    as _i20;
import '../../features/profile_features/coupon_available/data/repository/coupon_available_repository.dart'
    as _i3;
import '../../features/profile_features/coupon_available/presentation/ui/pages/coupon_available_controller.dart'
    as _i14;
import '../../features/profile_features/rewards_card/data/repository/rewards_card_repository.dart'
    as _i10;
import '../../features/profile_features/rewards_card/presentation/ui/pages/rewards_card_controller.dart'
    as _i18;
import '../../features/settings_features/privacy_policy/data/repository/privacy_policy_repository.dart'
    as _i8;
import '../../features/settings_features/privacy_policy/presentation/ui/pages/privacy_policy_controller.dart'
    as _i16;
import '../../features/settings_features/terms_conditions/data/repository/terms_conditions_repository.dart'
    as _i13;
import '../../features/settings_features/terms_conditions/presentation/ui/pages/terms_conditions_controller.dart'
    as _i21; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.CouponAvailableRepository>(
      () => _i3.CouponAvailableRepository());
  gh.factory<_i4.ForgetPasswordRepository>(
      () => _i4.ForgetPasswordRepository());
  gh.factory<_i5.ForgetpasswordController>(
      () => _i5.ForgetpasswordController(get<_i4.ForgetPasswordRepository>()));
  gh.factory<_i6.OTPVerificationRepository>(
      () => _i6.OTPVerificationRepository());
  gh.factory<_i7.OnetimePasswordRepository>(
      () => _i7.OnetimePasswordRepository());
  gh.factory<_i8.PrivacyPolicyRepository>(() => _i8.PrivacyPolicyRepository());
  gh.factory<_i9.ResetPasswordRepository>(() => _i9.ResetPasswordRepository());
  gh.factory<_i10.RewardsCardRepository>(() => _i10.RewardsCardRepository());
  gh.factory<_i11.SignInRepository>(() => _i11.SignInRepository());
  gh.factory<_i12.SignUpRepository>(() => _i12.SignUpRepository());
  gh.factory<_i13.TermsConditionsRepository>(
      () => _i13.TermsConditionsRepository());
  gh.factory<_i14.CouponAvailableController>(() =>
      _i14.CouponAvailableController(get<_i3.CouponAvailableRepository>()));
  gh.factory<_i15.OnetimePasswordController>(() =>
      _i15.OnetimePasswordController(get<_i7.OnetimePasswordRepository>()));
  gh.factory<_i16.PrivacyPolicyController>(
      () => _i16.PrivacyPolicyController(get<_i8.PrivacyPolicyRepository>()));
  gh.factory<_i17.ResetPasswordController>(
      () => _i17.ResetPasswordController(get<_i9.ResetPasswordRepository>()));
  gh.factory<_i18.RewardsCardController>(
      () => _i18.RewardsCardController(get<_i10.RewardsCardRepository>()));
  gh.factory<_i19.SignInController>(
      () => _i19.SignInController(get<_i11.SignInRepository>()));
  gh.factory<_i20.SignUpController>(
      () => _i20.SignUpController(get<_i12.SignUpRepository>()));
  gh.factory<_i21.TermsConditionsController>(() =>
      _i21.TermsConditionsController(get<_i13.TermsConditionsRepository>()));
  return get;
}
