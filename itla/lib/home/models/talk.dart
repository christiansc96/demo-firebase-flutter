import 'package:flutter/cupertino.dart';

class TalkDTO {
  String uid;
  String name;
  bool active;

  TalkDTO({@required this.uid, @required this.name, @required this.active});
  TalkDTO.fromJson(dynamic json)
      : uid = json["uid"],
        name = json["name"],
        active = json["active"];
}
