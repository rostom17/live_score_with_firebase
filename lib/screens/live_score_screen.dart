import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:live_score_with_firebase/data/football_score_model.dart';

class LiveScoreScreen extends StatefulWidget {
  const LiveScoreScreen({super.key});

  @override
  State<LiveScoreScreen> createState() => _LiveScoreScreenState();
}

class _LiveScoreScreenState extends State<LiveScoreScreen> {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  List<FootBallScoreModel> _matchList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Live Football Score',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: StreamBuilder(
        stream: firebaseFirestore.collection('Football Score').snapshots(),
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }

          if (snapshot.hasData == false) {
            return const Center(
              child: Text("Empty"),
            );
          }

          _matchList.clear();
          for (QueryDocumentSnapshot fetchedData in snapshot.data?.docs ?? []) {
            _matchList.add(
              FootBallScoreModel(
                matchName: fetchedData.id,
                firstTeam: fetchedData.get('firstTeamName'),
                secondTeam: fetchedData.get('secondTeamName'),
                firstTeamScore: fetchedData.get('firstTeamScore'),
                secondTeamScore: fetchedData.get('secondTeamScore'),
              ),
            );
          }

          return ListView.builder(
            itemCount: _matchList.length,
            itemBuilder: (context, index) => Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              color: Colors.blue.shade50,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildColumn(_matchList[index].firstTeamScore.toString(),
                        _matchList[index].firstTeam),
                    const Column(
                      children: [
                        Text(
                          "VS",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      ],
                    ),
                    _buildColumn(_matchList[index].secondTeamScore.toString(),
                        _matchList[index].secondTeam),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Column _buildColumn(String score, String name) {
    return Column(

      children: [
        Text(
          score,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.black.withOpacity(.6),
          ),
        ),
      ],
    );
  }
}
