import 'package:dating_app/features/authentication/data/authenticator.dart';
import 'package:dating_app/features/user/data/user_provider.dart';
import 'package:dating_app/features/user/models/user/user.dart';
import 'package:dating_app/utils/firestore_document/document.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userListProvider = StreamProvider<List<Document<User>>>((ref) {
  final authUser = ref.watch(authUserProvider);
  final uid = authUser.value?.uid;
  final user = ref.watch(userStreamProvider).value;
  final gender = user?.data()!.gender.name;
  return authUser.isLoading
      ? const Stream.empty()
      : uid == null || gender == null
          ? const Stream.empty()
          : ref
              .watch(userRefProvider)
              .where('gender', isNotEqualTo: gender)
              .snapshots()
              .map(
                (snapshot) => snapshot.docs
                    .map(
                      (doc) => Document(
                        doc.id,
                        doc.data(),
                      ),
                    )
                    .toList(),
              );
});
