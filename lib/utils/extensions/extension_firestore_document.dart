import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/constants/constant_json.dart';

extension DocumentReferenceX<E> on DocumentReference {
  DocumentReference<JsonMap> get raw => FirebaseFirestore.instance.doc(path);
}
