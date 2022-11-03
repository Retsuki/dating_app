export class AppFirestoreModel {
  get toJson() {
    return {
      ...this,
    }
  }
}

export const converter = {
  toFirestore: <T extends AppFirestoreModel>(data: T) => {
    return data instanceof AppFirestoreModel ? data.toJson : data
  },
  fromFirestore: <T>(snapshot: FirebaseFirestore.QueryDocumentSnapshot) =>
    snapshot.data() as T,
}
