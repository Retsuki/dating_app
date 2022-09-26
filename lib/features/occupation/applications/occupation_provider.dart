import 'package:dating_app/features/occupation/data/occupation_repository.dart';
import 'package:dating_app/utils/firestore_document/document.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// master_occupationコレクション
final masterOccupationProvider = Provider((ref) {
  final masterOccupations = ref.watch(masterOccupationStreamProvider).value;
  if (masterOccupations == null || masterOccupations.size == 0) {
    return dummyMasterOccupations;
  }

  return masterOccupations.docs
      .map(
        (doc) => Document(
          doc.id,
          doc.data(),
        ),
      )
      .toList();
});
