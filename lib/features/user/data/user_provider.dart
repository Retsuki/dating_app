import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/constants/collection_path.dart';
import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/user/models/private_user/private_user.dart';
import 'package:dating_app/features/user/models/readonly_user/readonly_user.dart';
import 'package:dating_app/features/user/models/user/user.dart';
import 'package:dating_app/utils/extensions/extension_firestore_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// userコレクション
final userStreamProvider = StreamProvider<DocumentSnapshot<User>?>((ref) {
  final userValue = ref.watch(authUserProvider);
  final uid = userValue.value?.uid;
  return userValue.isLoading
      ? const Stream.empty()
      : uid == null
          ? Stream.value(null)
          : ref.watch(userRefProvider).doc(uid).snapshots();
});

final userRefProvider = Provider((ref) {
  return FirebaseFirestore.instance
      .collection(ColName.user)
      .withUserConverter();
});

/// private_userコレクション
final privateUserStreamProvider =
    StreamProvider<DocumentSnapshot<PrivateUser>?>((ref) {
  final privateUserValue = ref.watch(authUserProvider);
  final uid = privateUserValue.value?.uid;
  return privateUserValue.isLoading
      ? const Stream.empty()
      : uid == null
          ? Stream.value(null)
          : ref.watch(privateUserRefProvider).doc(uid).snapshots();
});

final privateUserRefProvider = Provider((ref) {
  return FirebaseFirestore.instance
      .collection(ColName.privateUser)
      .withPrivateUserConverter();
});

/// readonly_userコレクション
final readonlyUserStreamProvider =
    StreamProvider<DocumentSnapshot<ReadonlyUser>?>((ref) {
  final authUser = ref.watch(authUserProvider);
  final uid = authUser.value?.uid;
  return authUser.isLoading
      ? const Stream.empty()
      : uid == null
          ? Stream.value(null)
          : ref.watch(readonlyUserRefProvider).doc(uid).snapshots();
});

final readonlyUserRefProvider = Provider((ref) {
  return FirebaseFirestore.instance
      .collection(ColName.readonlyUser)
      .withReadonlyUserConverter();
});
