import 'package:dating_app/features/interest/data/master_interest_repository.dart';
import 'package:dating_app/utils/firestore_document/document.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final masterInterestProvider = Provider((ref) {
  return ref.watch(masterInterestStreamProvider).maybeWhen(
        data: (data) => data.size == 0
            ? dummyMasterInterests
            : data.docs.map((doc) => Document(doc.id, doc.data())).toList(),
        orElse: () => dummyMasterInterests,
      );
});
