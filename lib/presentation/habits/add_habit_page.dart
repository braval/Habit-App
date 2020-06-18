import 'package:flushbar/flushbar_helper.dart';
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
      create: (BuildContext context) => getIt<HabitAddFormBloc>()
        ..add(HabitAddFormEvent.initializeUser(user)),
      child: BuildAddTaskScreen(user: user),
    );
  }
}

class BuildAddTaskScreen extends StatefulWidget {
  final User user;

  const BuildAddTaskScreen({Key key, this.user}) : super(key: key);
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
            BuildHabitForm(user: widget.user),
          ],
        ),
      ),
    );
  }
}

class BuildHabitForm extends StatefulWidget {
  final User user;

  const BuildHabitForm({Key key, this.user}) : super(key: key);
  @override
  _BuildHabitFormState createState() => _BuildHabitFormState();
}

class _BuildHabitFormState extends State<BuildHabitForm> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HabitAddFormBloc, HabitAddFormState>(
      listener: (context, state) {
        state.habitFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  unexpected: (_) => "Unexpected Failure",
                  noCategorySelected: (_) => "Please select a category",
                ),
              ).show(context);
            },
            (_) => Navigator.pop(context),
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
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
                    onChanged: (value) => context
                        .bloc<HabitAddFormBloc>()
                        .add(HabitAddFormEvent.habitNameChanged(value)),
                    validator: (_) => context
                        .bloc<HabitAddFormBloc>()
                        .state
                        .habitName
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            invalidName: (_) => 'Invalid Habit Name',
                            nameTooLong: (_) => 'Name too long',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                ),
                const Text(
                  'Category',
                  style: constants.kTitleStyle,
                ),
                CategoryList(
                  categoryList: HabitCategoryName.predefinedCategories,
                  onSelected: (String value) {
                    context.bloc<HabitAddFormBloc>().add(
                          HabitAddFormEvent.categorySelectedChanged(value),
                        );
                  },
                ),
                Center(
                  child: FlatButton(
                    color: constants.kDarkPurple,
                    shape: kLoginButtonShape,
                    onPressed: () {
                      context
                          .bloc<HabitAddFormBloc>()
                          .add(HabitAddFormEvent.addHabit(widget.user));
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
        );
      },
    );
  }
}
