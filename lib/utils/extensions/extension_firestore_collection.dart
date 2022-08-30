import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/constants/constant_json.dart';
import 'package:dating_app/features/user/models/private_user/private_user.dart';
import 'package:dating_app/features/user/models/readonly_user/readonly_user.dart';
import 'package:dating_app/features/user/models/user/user.dart';

extension CollectionReferenceX<E> on CollectionReference<E> {
  CollectionReference<JsonMap> get raw =>
      FirebaseFirestore.instance.collection(path);

  CollectionReference<User> withUserConverter() {
    return withConverter(
      fromFirestore: (snapshot, _) => User.fromJson(snapshot.data()!),
      toFirestore: (user, _) => user.toJson(),
    );
  }

  CollectionReference<PrivateUser> withPrivateUserConverter() {
    return withConverter(
      fromFirestore: (snapshot, _) => PrivateUser.fromJson(snapshot.data()!),
      toFirestore: (privateUser, _) => privateUser.toJson(),
    );
  }

  CollectionReference<ReadonlyUser> withReadonlyUserConverter() {
    return withConverter(
      fromFirestore: (snapshot, _) => ReadonlyUser.fromJson(snapshot.data()!),
      toFirestore: (readonlyUser, _) => readonlyUser.toJson(),
    );
  }
}
