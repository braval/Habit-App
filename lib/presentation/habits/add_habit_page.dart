import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits/application/habits/habit_add_form/habit_add_form_bloc.dart';
import 'package:habits/domain/habits/value_objects.dart';
import 'package:habits/domain/user/user.dart';
import 'package:habits/injection.dart';
import 'package:habits/presentation/constants.dart' as constants;
import 'package:habits/presentation/habits/widgets/categories.dart';
import 'package:habits/presentation/login/widgets/form_widget_helper.dart';

class AddTaskScreen extends StatelessWidget {
  final User user;

  const AddTaskScreen({this.user});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          getIt<HabitAddFormBloc>()..add(HabitAddFormEvent.initialize(user)),
      child: BuildAddTaskScreen(),
    );
  }
}

class BuildAddTaskScreen extends StatefulWidget {
  @override
  _BuildAddTaskScreenState createState() => _BuildAddTaskScreenState();
}

class _BuildAddTaskScreenState extends State<BuildAddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: constants.kBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: constants.kDarkPurple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              height: 65.0,
              child: const Center(
                child: Text(
                  'Create New Habit',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Form(
              // autovalidate: state.showErrorMessages,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 75.0, left: 20.0, right: 20.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Name',
                      style: constants.kTitleStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 30.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusColor: Colors.red,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          filled: true,
                          fillColor: Colors.grey[100],
                        ),
                        autocorrect: false,
                        // onChanged: (value) => context
                        //     .bloc<SignInFormBloc>()
                        //     .add(SignInFormEvent.emailChanged(value)),
                        // validator: (_) => context
                        //     .bloc<SignInFormBloc>()
                        //     .state
                        //     .emailAddress
                        //     .value
                        //     .fold(
                        //       (f) => f.maybeMap(
                        //         invalidEmail: (_) => 'Invalid Email',
                        //         orElse: () => null,
                        //       ),
                        //       (_) => null,
                        //     ),
                      ),
                    ),
                    const Text(
                      'Category',
                      style: constants.kTitleStyle,
                    ),
                    const CategoryList(
                      categoryList: HabitCategoryName.predefinedCategories,
                    ),
                    Center(
                      child: FlatButton(
                        color: constants.kDarkPurple,
                        shape: kLoginButtonShape,
                        onPressed: () {
                          // WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
                          // context.bloc<SignInFormBloc>().add(
                          //       const SignInFormEvent.signInWithEmailAndPasswordPressed(),
                          //     );
                        },
                        child: const Text(
                          'Add Habit',
                          style: kFormButtonTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
