import 'package:flutter/material.dart';
import 'package:ovarion/views/history_view.dart';

class AnalysisView extends StatefulWidget {
  const AnalysisView({super.key});

  @override
  State<AnalysisView> createState() => _AnalysisViewState();
}

class _AnalysisViewState extends State<AnalysisView> {
  PageController controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/icons/ovarion.png',
          height: 69,
        ),
        toolbarHeight: 81,
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: true,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 0, 28, 36),
          elevation: 20.0,
          child: const Icon(Icons.list_sharp),
          onPressed: () async {
            await Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const AnalysisHistory()),
            );
          }),
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: const [View1(), View2(), View3()],
      ),
    );
  }
}

class View1 extends StatelessWidget {
  const View1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: textWidget(text: 'Teams')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Row(
                children: [
                  textFieldWidget(hint: 'Team A', width: 150),
                  textWidget(text: 'vs', size: 19),
                  textFieldWidget(hint: 'Team B', width: 150),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: textWidget(text: 'Winning Odds')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Row(
                children: [
                  textFieldWidget(hint: 'Home 1.x', width: 150),
                  textWidget(text: 'vs', size: 19),
                  textFieldWidget(hint: 'Away 2.x', width: 150),
                ],
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: textWidget(text: 'Lines & Odds')),
            SizedBox(
              height: 72,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    textFieldWidget(hint: 'Low Line ', width: 112),
                    textFieldWidget(hint: 'High Line ', width: 112),
                    textFieldWidget(hint: '1.x ', width: 112),
                    textFieldWidget(hint: '1.x ', width: 112),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: textWidget(text: 'Average Goals')),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Expanded(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      textWidget(text: 'Home', size: 21),
                      Row(
                        children: [
                          textFieldWidget(hint: 'Scored ', width: 120),
                          textFieldWidget(hint: 'Conceded', width: 120),
                        ],
                      ),
                      textWidget(text: 'Away', size: 21),
                      Row(
                        children: [
                          textFieldWidget(hint: 'Scored ', width: 120),
                          textFieldWidget(hint: 'Conceded ', width: 120),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: recordWidget(
            //       teams: 'Mufekeleke Balls vs Helekemeke Hoops',
            //       winningOdds: '1.3 - 2.33',
            //       lineOdds: '1.89 - 1.90',
            //       overAverage: '50',
            //       pointsPerGame: '45',
            //       voteSpread: '42.5',
            //       lowHighLineTrend: '60',
            //       decision: 'Under 161.5'),
            // ),
            // buttonWidget(text: 'LICK ME')
          ],
        ),
      ),
    );
  }
}

class View2 extends StatelessWidget {
  const View2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: textWidget(text: 'Last 5 Home Games')),
            SizedBox(
              height: 72,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: textWidget(
                        text: 'Home', size: 21, fontWeight: FontWeight.normal),
                  ),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                ],
              ),
            ),
            SizedBox(
              height: 72,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: textWidget(
                        text: 'Away', size: 21, fontWeight: FontWeight.normal),
                  ),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                ],
              ),
            ),

            Align(
                alignment: Alignment.centerLeft,
                child: textWidget(text: 'Last 5 Away Games')),
            SizedBox(
              height: 72,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: textWidget(
                        text: 'Home', size: 21, fontWeight: FontWeight.normal),
                  ),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                ],
              ),
            ),
            SizedBox(
              height: 72,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: textWidget(
                        text: 'Away', size: 21, fontWeight: FontWeight.normal),
                  ),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                ],
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: textWidget(text: 'Last Home vs Away Games')),
            SizedBox(
              height: 72,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: textWidget(
                        text: 'Home', size: 21, fontWeight: FontWeight.normal),
                  ),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                ],
              ),
            ),
            SizedBox(
              height: 72,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: textWidget(
                        text: 'Away', size: 21, fontWeight: FontWeight.normal),
                  ),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                  textFieldWidget(hint: 'Points', width: 112),
                ],
              ),
            ),

            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: recordWidget(
            //       teams: 'Mufekeleke Balls vs Helekemeke Hoops',
            //       winningOdds: '1.3 - 2.33',
            //       lineOdds: '1.89 - 1.90',
            //       overAverage: '50',
            //       pointsPerGame: '45',
            //       voteSpread: '42.5',
            //       lowHighLineTrend: '60',
            //       decision: 'Under 161.5'),
            // ),
            // buttonWidget(text: 'LICK ME')
          ],
        ),
      ),
    );
  }
}

class View3 extends StatelessWidget {
  const View3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.center,
              child: buttonWidget(text: 'ANALYSE')),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: textWidget(
                text: 'W.O : 1.3 - 2.33\n\nL.O : 1.89 - 1.90',
                fontWeight: FontWeight.bold,
                size: 25),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: textWidget(
                text:
                    '0.A : 50% \n\nPGP : 45% \n\nV+S : 42.5% \n\nLLT+HLT : 60%\n\n',
                fontWeight: FontWeight.bold,
                size: 25),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: textWidget(
                text: 'Decision = Under 161.5',
                fontWeight: FontWeight.bold,
                size: 25),
          ),
          Align(alignment: Alignment.center, child: buttonWidget(text: 'SAVE')),
        ],
      ),
    ));
  }
}

Widget textFieldWidget(
        {String? hint, double width = 360, double height = 45}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: SizedBox(
        width: width,
        height: height,
        child: TextField(
          style: const TextStyle(color: Colors.white, fontSize: 24),
          decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.white)),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(width: 2, color: Colors.white)),
              border: const OutlineInputBorder(),
              hintText: hint,
              hintStyle:
                  const TextStyle(color: Colors.grey, fontFamily: 'FreeSerif')),
        ),
      ),
    );

Widget textWidget(
        {String text = '', double size = 30, fontWeight = FontWeight.normal}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white,
            fontSize: size,
            fontWeight: fontWeight,
            fontFamily: 'FreeSerif'),
      ),
    );

Widget buttonWidget({String text = ''}) => Material(
      child: InkWell(
        onTap: () {
          debugPrint('Oh yes papi');
        },
        child: Ink(
          width: 350,
          height: 70,
          color: Colors.white,
          child: Center(
            child: Container(
              height: 70,
              width: 250,
              padding: const EdgeInsets.all(12),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 35, fontFamily: 'FreeSerif'),
                ),
              ),
            ),
          ),
        ),
      ),
    );

Widget recordWidget(
        {String teams = '',
        String winningOdds = '',
        String lineOdds = '',
        String overAverage = '',
        String pointsPerGame = '',
        String voteSpread = '',
        String lowHighLineTrend = '',
        String decision = ''}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget(text: teams, fontWeight: FontWeight.bold, size: 25),
        textWidget(
            text: 'W.O : $winningOdds | L.O : $lineOdds',
            fontWeight: FontWeight.normal,
            size: 21),
        textWidget(
            text:
                '0.A : $overAverage% | PGP : $pointsPerGame% | V+S : $voteSpread% | LLT+HLT : $lowHighLineTrend%',
            fontWeight: FontWeight.normal,
            size: 21),
        textWidget(
            text: 'Decision = $decision',
            fontWeight: FontWeight.bold,
            size: 21),
      ],
    );


//  children: [
//               Align(
//                   alignment: Alignment.centerLeft,
//                   child: textWidget(text: 'Niggas be serious')),
//               textFieldWidget(hint: 'Normal Ahh Text Box'),
//               textFieldWidget(hint: 'Short ', width: 112),
//               Align(
//                   alignment: Alignment.centerLeft,
//                   child: textWidget(text: 'We Be Testing and Stuff')),
//               SizedBox(
//                 height: 100,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8),
//                   child: ListView(
//                     shrinkWrap: true,
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       textFieldWidget(hint: 'Short ', width: 112),
//                       textFieldWidget(hint: 'Short ', width: 112),
//                       textFieldWidget(hint: 'Short ', width: 112),
//                       textFieldWidget(hint: 'Short ', width: 112),
//                       textFieldWidget(hint: 'Short ', width: 112),
//                     ],
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: recordWidget(
//                     teams: 'Mufekeleke Balls vs Helekemeke Hoops',
//                     winningOdds: '1.3 - 2.33',
//                     lineOdds: '1.89 - 1.90',
//                     overAverage: '50',
//                     pointsPerGame: '45',
//                     voteSpread: '42.5',
//                     lowHighLineTrend: '60',
//                     decision: 'Under 161.5'),
//               ),
//               buttonWidget(text: 'LICK ME')
//             ],