import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/features/user/data/user_provider.dart';
import 'package:dating_app/features/worry/data/private_user_worry_repository.dart';
import 'package:dating_app/features/worry/models/private_user_worry.dart';
import 'package:dating_app/features/worry/models/worry_category.dart';
import 'package:dating_app/features/worry/models/worry_post_state.dart';
import 'package:dating_app/utils/extensions/extension_firestore_document.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final worryPostStateNotifierProvider =
    StateNotifierProvider<WorryPostStateNotifier, WorryPostState>(
  WorryPostStateNotifier.new,
);

class WorryPostStateNotifier extends StateNotifier<WorryPostState> {
  WorryPostStateNotifier(this._ref) : super(const WorryPostState());

  final Ref _ref;

  final worryPostTextController = TextEditingController();

  Future<void> sendNewWorry() async {
    final userDoc = await _ref.read(userStreamProvider.future);
    final user = userDoc!.data()!;
    final privateUserWorry = PrivateUserWorry(
      text: worryPostTextController.text,
      age: 23,
      gender: user.gender,
      type: WorryCategoryType.koi,
    );
    await _ref
        .read(privateUserWorryRefProvider)
        .doc()
        .raw
        .set(<String, dynamic>{
      ...privateUserWorry.toJson(),
      'created_at': FieldValue.serverTimestamp(),
      'updated_at': FieldValue.serverTimestamp(),
    });
    worryPostTextController.clear();
    updateWorryPostState(value: false);
    return;
  }

  void updateWorryPostState({required bool value}) {
    state = state.copyWith(
      isPossibleSend: value,
    );
  }

  @override
  void dispose() {
    worryPostTextController.dispose();
    super.dispose();
  }
}
