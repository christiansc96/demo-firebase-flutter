import 'package:flutter/material.dart';
import 'package:itla/home/models/talk.dart';
import 'package:itla/home/repository/talk-controller.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GDSC ITLA"),
      ),
      drawer: Drawer(),
      body: Container(
        child: getTalks(),
      ),
    );
  }

  FutureBuilder<List<TalkDTO>> getTalks() => FutureBuilder<List<TalkDTO>>(
      future: talks.getTalks(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Container();
        }

        return ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: snapshot.data.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => Text(
            "${snapshot.data[index].name}",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        );
      });
}
