import 'package:flutter/material.dart';

import 'package:ovarion/views/analysis_view.dart';

class AnalysisHistory extends StatelessWidget {
  const AnalysisHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          'History',
          style: TextStyle(
              fontFamily: 'FreeSerif',
              fontWeight: FontWeight.bold,
              fontSize: 27),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: recordWidget(
                  teams: 'Mufekeleke Balls vs Helekemeke Hoops',
                  winningOdds: '1.3 - 2.33',
                  lineOdds: '1.89 - 1.90',
                  overAverage: '50',
                  pointsPerGame: '45',
                  voteSpread: '42.5',
                  lowHighLineTrend: '60',
                  decision: 'Under 161.5'),
            ),
            const Divider(
              color: Colors.white54,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: recordWidget(
                  teams: 'Mufekeleke Balls vs Helekemeke Hoops',
                  winningOdds: '1.3 - 2.33',
                  lineOdds: '1.89 - 1.90',
                  overAverage: '50',
                  pointsPerGame: '45',
                  voteSpread: '42.5',
                  lowHighLineTrend: '60',
                  decision: 'Under 161.5'),
            ),
            const Divider(
              color: Colors.white54,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: recordWidget(
                  teams: 'Mufekeleke Balls vs Helekemeke Hoops',
                  winningOdds: '1.3 - 2.33',
                  lineOdds: '1.89 - 1.90',
                  overAverage: '50',
                  pointsPerGame: '45',
                  voteSpread: '42.5',
                  lowHighLineTrend: '60',
                  decision: 'Under 161.5'),
            ),
            const Divider(
              color: Colors.white54,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: recordWidget(
                  teams: 'Mufekeleke Balls vs Helekemeke Hoops',
                  winningOdds: '1.3 - 2.33',
                  lineOdds: '1.89 - 1.90',
                  overAverage: '50',
                  pointsPerGame: '45',
                  voteSpread: '42.5',
                  lowHighLineTrend: '60',
                  decision: 'Under 161.5'),
            ),
          ],
        ),
      ),
    );
  }
}
