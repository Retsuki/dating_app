import 'package:dating_app/constants/collection_path.dart';
import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/user/data/user_provider.dart';
import 'package:dating_app/utils/extensions/extension_firestore_collection.dart';
import 'package:dating_app/utils/firestore_document/document.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final privateUserWorryStreamProvider = StreamProvider((ref) {
  return ref.watch(privateUserWorryRefProvider).snapshots().map(
        (snap) => snap.docs.map(
          (doc) => Document(
            doc.id,
            doc.data(),
          ),
        ),
      );
});

final privateUserWorryRefProvider = Provider((ref) {
  final userId = ref.watch(authUserProvider).value!.uid;
  return ref
      .read(privateUserRefProvider)
      .doc(userId)
      .collection(ColName.privateUserWorry)
      .withPrivateUserWorryConverter();
});
