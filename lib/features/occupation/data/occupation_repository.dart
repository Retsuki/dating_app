import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/constants/collection_path.dart';
import 'package:dating_app/features/occupation/models/master_occupation.dart';
import 'package:dating_app/utils/extensions/extension_firestore_collection.dart';
import 'package:dating_app/utils/firestore_document/document.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// master_occupationコレクション
final masterOccupationStreamProvider = StreamProvider((ref) {
  return ref.watch(masterOccupationRefProvider).snapshots();
});

final masterOccupationRefProvider = Provider((ref) {
  return FirebaseFirestore.instance
      .collection(ColName.masterOccupation)
      .withMasterOccupationConverter();
});

/// master_occupationダミーデータ
final dummyMasterOccupations = [
  Document(
    '1',
    MasterOccupation(
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      name: 'IT関連',
    ),
  ),
  Document(
    '2',
    MasterOccupation(
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      name: 'コンサルタント',
    ),
  ),
  Document(
    '3',
    MasterOccupation(
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      name: 'コンサルタント',
    ),
  ),
];
