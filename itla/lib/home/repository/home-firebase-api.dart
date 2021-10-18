import 'package:cloud_firestore/cloud_firestore.dart';

class TalksFirebaseApi {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot> getTalks() async =>
      await _firestore.collection('talks').get();
}
