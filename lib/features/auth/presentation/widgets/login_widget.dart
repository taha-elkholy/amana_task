import 'package:amana_task/core/presentation/widgets/custom_elevated_button.dart';
import 'package:amana_task/core/presentation/widgets/custom_text_form_field.dart';
import 'package:amana_task/core/utils/app_assets.dart';
import 'package:amana_task/core/utils/app_colors.dart';
import 'package:amana_task/core/utils/app_space.dart';
import 'package:amana_task/core/utils/app_strings.dart';
import 'package:amana_task/features/auth/domain/usecases/login_use_case.dart';
import 'package:amana_task/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:amana_task/features/auth/presentation/cubit/auth_cubit/auth_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _userNameController;
  late TextEditingController _passwordController;
  late bool _rememberMe;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _userNameController = TextEditingController(text: 'ibraheem');
    _passwordController = TextEditingController(text: 'Nqraa@123');
    _rememberMe = true;
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 24.h,
                horizontal: 20.w,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomTextFormField(
                    controller: _userNameController,
                    hint: AppStrings.userNameHint,
                    prefixIcon: AppAssets.userIcon,
                    inputType: TextInputType.text,
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return AppStrings.userNameValidation;
                      }
                      return null;
                    },
                  ),
                  12.0.h.appSpace,
                  CustomTextFormField(
                    controller: _passwordController,
                    hint: AppStrings.passwordHint,
                    prefixIcon: AppAssets.lockIcon,
                    inputType: TextInputType.visiblePassword,
                    isPassword: true,
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return AppStrings.passwordValidation;
                      }
                      return null;
                    },
                  ),
                  12.0.h.appSpace,
                  Row(
                    children: [
                      StatefulBuilder(
                        builder: (context, statesSetter) {
                          return Checkbox(
                              value: _rememberMe,
                              onChanged: (newValue) {
                                statesSetter(() {
                                  _rememberMe = !_rememberMe;
                                });
                              });
                        },
                      ),
                      Text(
                        AppStrings.rememberMe,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontSize: 16, color: AppColors.darkGrey),
                      ),
                      const Spacer(),
                      Text(
                        AppStrings.forgotPassword,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontSize: 16, color: AppColors.darkGrey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          24.0.h.appSpace,
          BlocBuilder<AuthCubit, AuthStates>(builder: (context, state) {
            return CustomElevatedButton(
              label: AppStrings.login,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  FocusScope.of(context).unfocus();
                  BlocProvider.of<AuthCubit>(context).login(
                    loginParam: LoginParam(
                        username: _userNameController.text,
                        password: _passwordController.text),
                  );
                }
              },
              isLoading: state == const AuthStates.loading(),
            );
          })
        ],
      ),
    );
  }
}
