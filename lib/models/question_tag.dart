import 'package:cloud_firestore/cloud_firestore.dart';

class QuestionTag {
  String name;

  QuestionTag({
    required this.name
  });

  static CollectionReference<QuestionTag> getFirestoreRef() {
    return FirebaseFirestore.instance.collection('tags').withConverter<QuestionTag>(
      fromFirestore: (snapshot, _) => fromJson(snapshot.data()!),
      toFirestore: (tag, _) => tag.toJson(),
    );
  }

  static QuestionTag fromJson(Map<String, Object?> json) {
    return QuestionTag(
      name: json["name"]! as String
    );
  }

  Map<String, Object?> toJson () {
    return {
      "name" : this.name
    };
  }

}
