import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/constants/constant_json.dart';
import 'package:dating_app/features/chat/models/chat/chat.dart';
import 'package:dating_app/features/chat/models/chat/chat_message/chat_message.dart';
import 'package:dating_app/features/user/models/private_user/private_user.dart';
import 'package:dating_app/features/user/models/readonly_user/readonly_user.dart';
import 'package:dating_app/features/user/models/user/user.dart';
import 'package:dating_app/features/worry/models/private_user_worry.dart';

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

  CollectionReference<Chat> withChatConverter() {
    return withConverter(
      fromFirestore: (snapshot, _) => Chat.fromJson(snapshot.data()!),
      toFirestore: (chat, _) => chat.toJson(),
    );
  }

  CollectionReference<ChatMessage> withChatMessageConverter() {
    return withConverter(
      fromFirestore: (snapshot, _) => ChatMessage.fromJson(snapshot.data()!),
      toFirestore: (chatMessage, _) => chatMessage.toJson(),
    );
  }

  CollectionReference<PrivateUserWorry> withPrivateUserWorryConverter() {
    return withConverter(
      fromFirestore: (snapshot, _) =>
          PrivateUserWorry.fromJson(snapshot.data()!),
      toFirestore: (privateUserWorry, _) => privateUserWorry.toJson(),
    );
  }
}
