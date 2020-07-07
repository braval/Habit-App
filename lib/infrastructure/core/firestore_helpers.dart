import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:habits/domain/auth/i_auth_facade.dart';
import 'package:habits/domain/core/errors.dart';
import 'package:habits/injection.dart';

extension FirestoreX on Firestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection('users')
        .document(user.id.getOrCrash());
  }

  Future<String> date() async {
    final userDoc = await Firestore.instance.userDocument();
    final userData = await userDoc.get().then((value) => value.data);
    return userData["date"].toString();
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get dailyHabitsCollection => collection('dailyHabits');
  CollectionReference get habitStatsCollection => collection('habitStats');
  CollectionReference get statsCollection => collection('stats');
}
