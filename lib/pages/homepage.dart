import 'package:flutter/material.dart';
import 'package:my_hereos/widgets/teamBottomAppbar.dart';
import '../widgets/teamSliverAppBar.dart';

class MyHomePage extends StatefulWidget {
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
              delegate: TeamSliverAppBar(
                expandedHeight: 150,
                pageTitle: 'Home Page',
              ),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Card(
                elevation: 4,
                child: InkWell(
                  splashColor: ThemeData().primaryColor,
                  onTap: () {},
                  child: Column(
                    children: <Widget>[
                      Stack(children: [
                        Container(
                          height: 200,
                          width: double.infinity,
                          child: Image.network(
                            'https://static.clubs.nfl.com/image/private/t_editorial_landscape_8_desktop_mobile/f_auto/packers/ojie1h2gxgqs6f1scdnq.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // mainAxisSpacing: 2,
                  // crossAxisSpacing: 6,
                  childAspectRatio: 1),
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return Card(
                  elevation: 4,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 190,
                        width: double.infinity,
                        child: Image.network(
                          'https://static.clubs.nfl.com/image/private/t_editorial_landscape_8_desktop_mobile/f_auto/packers/ojie1h2gxgqs6f1scdnq.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                );
              }, childCount: 8),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Center(
                  child: Text('Test'),
                ),
              ),
            ),
            // SliverToBoxAdapter(
            //   child: Container(
            //     height: 1500,
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: TeamBottomAppbar(),
    );
  }
}
