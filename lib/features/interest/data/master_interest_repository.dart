import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/constants/collection_path.dart';
import 'package:dating_app/features/interest/models/master_interest.dart';
import 'package:dating_app/utils/extensions/extension_firestore_collection.dart';
import 'package:dating_app/utils/firestore_document/document.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final masterInterestStreamProvider = StreamProvider((ref) {
  return ref.watch(masterInterestRefProvider).snapshots();
});

final masterInterestRefProvider = Provider((ref) {
  return FirebaseFirestore.instance
      .collection(ColName.masterInterest)
      .withMasterInterestConverter();
});

final dummyMasterInterests = [
  Document(
    '1',
    MasterInterest(
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      name: '📚小説',
      isShow: true,
    ),
  ),
  Document(
    '2',
    MasterInterest(
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      name: '🎵音楽',
      isShow: true,
    ),
  ),
  Document(
    '3',
    MasterInterest(
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      name: '🏀バスケ',
      isShow: true,
    ),
  ),
  Document(
    '4',
    MasterInterest(
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      name: '🎥映画',
      isShow: true,
    ),
  ),
  Document(
    '5',
    MasterInterest(
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      name: '🚶‍♂️散歩',
      isShow: true,
    ),
  ),
];
