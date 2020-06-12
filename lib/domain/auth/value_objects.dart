import 'package:dartz/dartz.dart';
import 'package:habits/domain/core/failures.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  factory Password.fromPassword(String confirmInput, Password password) {
    assert(confirmInput != null);
    if (confirmInput != password.getOrCrash()) {
      return Password._(left(const ValueFailure.doNotMatch()));
    } else {
      return Password._(
        validatePassword(confirmInput),
      );
    }
  }

  const Password._(this.value);
}
