import 'package:amana_task/config/di/injectable.dart';
import 'package:amana_task/config/routes/app_routes.dart';
import 'package:amana_task/features/auth/presentation/cubit/auth_cubit/auth_cubit.dart';
import 'package:amana_task/features/auth/presentation/cubit/auth_cubit/auth_states.dart';
import 'package:amana_task/features/auth/presentation/widgets/background_widget.dart';
import 'package:amana_task/features/auth/presentation/widgets/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthStates>(
        listener: (context, state) {
          state.whenOrNull(
            error: (error) => ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(error))),
            loaded: (_) => Navigator.of(context)
                .pushReplacementNamed(AppRoutes.homePageRout),
          );
        },
        child: Scaffold(
          extendBodyBehindAppBar: true,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(),
          body: Stack(
            children: const [
              BackgroundWidget(),
              LoginBody(),
            ],
          ),
        ),
      ),
    );
  }
}
