import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:itla/home/models/talk.dart';
import 'package:itla/home/repository/home-firebase-api.dart';

class Talkscontroller {
  final _talkFirebaseApi = TalksFirebaseApi();

  Future<List<Talk>> getTalks() async {
    var talksFromFirebase = await _talkFirebaseApi.getTalks();

    List<Talk> talks = buildTalks(talksFromFirebase.docs);
    return talks;
  }

  List<Talk> buildTalks(List<DocumentSnapshot> documents) =>
      documents.map((talk) => Talk.fromJson(talk)).toList();
}

final talks = Talkscontroller();
