import 'package:flutter/material.dart';
import 'package:my_hereos/widgets/teamBottomAppbar.dart';
import '../widgets/teamSliverAppBar.dart';

class StandingPage extends StatefulWidget {
  static const routeName = '/standing';
  @override
  _StandingPageState createState() => _StandingPageState();
}

class _StandingPageState extends State<StandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: TeamSliverAppBar(
                expandedHeight: 150,
                pageTitle: 'Team Standing',
              ),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: DataTable(
                  columnSpacing: 30,
                  columns: [
                    DataColumn(label: Text('Team')),
                    DataColumn(label: Text('Wins')),
                    DataColumn(label: Text('Loses')),
                    DataColumn(label: Text('Ties')),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Green Bay')),
                      DataCell(Text('7')),
                      DataCell(Text('1')),
                      DataCell(Text('0')),
                    ])
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: TeamBottomAppbar(),
    );
  }
}
