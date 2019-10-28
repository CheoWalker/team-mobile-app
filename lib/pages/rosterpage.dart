import 'package:flutter/material.dart';
import '../widgets/teamSliverAppBar.dart';

class TeamPage extends StatefulWidget {
  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: TeamSliverAppBar(
                  expandedHeight: 150, pageTitle: 'Team Roster'),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: DataTable(
                columns: [],
                rows: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
