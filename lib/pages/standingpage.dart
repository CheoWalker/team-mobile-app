import 'package:flutter/material.dart';
import '../widgets/teamSliverAppBar.dart';

class StandingPage extends StatefulWidget {
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
                columns: [],
                rows: [],
              ),
            ),
          )
        ],
      )),
    );
  }
}
