import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:itla/home/models/talk.dart';
import 'package:itla/home/repository/talk-firebase-api.dart';

class TalkController {
  final talkFirebaseApi = TalkFirebaseApi();

  Future<List<TalkDTO>> getTalks() async {
    final talksFromFirebase = await talkFirebaseApi.getTalks();

    final List<TalkDTO> talkList = buildingTalkDTO(talksFromFirebase.docs);
    return talkList;
  }

  List<TalkDTO> buildingTalkDTO(List<DocumentSnapshot> documents) {
    List<TalkDTO> talks = [];
    for (var document in documents) {
      talks.add(TalkDTO.fromJson(document));
    }
    return talks;
  }
}

final talks = TalkController();
