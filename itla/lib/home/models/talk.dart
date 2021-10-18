import 'package:flutter/cupertino.dart';

class Talk {
  String uid;
  String name;
  bool active;

  Talk({@required this.uid, @required this.name, @required this.active});

  Talk.fromJson(dynamic json)
      : uid = json['uid'],
        name = json['name'],
        active = json['active'];
}
