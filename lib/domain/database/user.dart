import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User implements _$User {
  const User._();

  const factory User({
    @required UniqueId id,
    @required Name firstName,
    @required Name lastName,
  }) = _User;

  static User fromDocument(UniqueId id, DocumentSnapshot document) {
    if (document == null || document.data == null) return null;
    return User(
      id: id,
      firstName: Name(document.data['first_name'].toString()),
      lastName: Name(document.data['last_name'].toString()),
    );
  }
}
