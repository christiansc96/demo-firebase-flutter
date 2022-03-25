import 'package:cloud_firestore/cloud_firestore.dart';

class TalkFirebaseApi {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot> getTalks() async {
    return await _firestore.collection("talks").get();
  }
}
