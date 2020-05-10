library github_graph;

// 📱 Flutter imports:
import 'package:flutter/material.dart';
import 'package:github_contributions/github_contributions.dart';

class ContributionGrid extends StatelessWidget {
  final String githubUserName;
  final int crossAxisItems;

  ContributionGrid(this.githubUserName, {this.crossAxisItems = 52});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getContributions(githubUserName),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data);
        }
      },
    );
  }
}
