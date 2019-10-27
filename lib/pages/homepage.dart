import 'package:flutter/material.dart';
import '../widgets/teamSliverAppBar.dart';

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
