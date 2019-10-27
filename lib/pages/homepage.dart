import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: TeamSliverAppBar(expandedHeight: 150),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Age')),
                    DataColumn(label: Text('Occuptation')),
                    DataColumn(label: Text('Email')),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(
                          Text('Cheo Walker'),
                        ),
                        DataCell(
                          Text('45'),
                        ),
                        DataCell(
                          Text('Sr Web Administrator'),
                        ),
                        DataCell(
                          Text('cwalker@dzwebcreations.com'),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(
                          Text('Pamela Bey'),
                        ),
                        DataCell(
                          Text('44'),
                        ),
                        DataCell(
                          Text('Sr Web Administrator'),
                        ),
                        DataCell(
                          Text('pamela@bebrilliantmedia.com'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 500,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TeamSliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  TeamSliverAppBar({@required this.expandedHeight});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        Image.network(
          "https://media.graytvinc.com/images/810*455/packers+logo3.jpg",
          fit: BoxFit.cover,
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Color(0xFF203731),
              child: Center(
                child: Text(
                  "MySliverAppBar",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 23,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
