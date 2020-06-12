import 'package:flutter/material.dart';
import 'package:habits/domain/auth/value_objects.dart';
import 'package:habits/domain/core/value_objects.dart';

abstract class IDatabaseFacade {
  Future<void> addUser({
    @required UniqueId id,
    @required EmailAddress address,
    @required Name firstName,
    @required Name lastName,
  });
}
