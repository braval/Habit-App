import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:habits/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits/routes/router.gr.dart';

class PopupMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return PopupMenuButton<int>(
          onSelected: (value) {
            context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
            ExtendedNavigator.of(context)
                .pushReplacementNamed(Routes.signInPage);
          },
          icon: const Icon(
            Icons.drag_handle,
            color: Colors.white,
          ),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: const Text(
                  "Sign out",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
