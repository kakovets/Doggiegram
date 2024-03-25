import 'package:flutter/material.dart';
import 'package:material_app/providers/theme_provider.dart';
import 'package:material_app/screens/profile_screen.dart';
import 'package:material_app/screens/second_screen.dart';
import 'package:material_app/theme/theme.dart';
import 'package:provider/provider.dart';
import '../core/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Were used for custom swipe detection
  /*
  double _initialX = 0;

  Scaffold -> body -> GestureDetector {
  onHorizontalDragStart: (DragStartDetails details) {
    _initialX = details.globalPosition.dx;
  },
  onHorizontalDragUpdate: (DragUpdateDetails details) {
    if (details.globalPosition.dx - _initialX > 50) {
      _scaffoldKey.currentState!.openDrawer();
    }
  },
  */

  @override
  void initState() {
    super.initState();
    sortChats();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawerEdgeDragWidth: MediaQuery.of(context).size.width,
      appBar: AppBar(
        title: const Text(
          'Doggiegram',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.pets),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: Theme.of(context).secondaryHeaderColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 32, 12, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: const Hero(
                            tag: 'profile_avatar',
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/avatar.png',),
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) {
                                  return const ProfileScreen();
                                })
                            );
                          },
                        ),
                        IconButton(
                          onPressed: () {
                            Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                          },
                          icon : Icon(
                            Provider.of<ThemeProvider>(context).themeData==darkMode
                                ?
                            Icons.sunny
                                :
                            Icons.nightlight,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Theme(
                    data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      tilePadding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
                      title: const Text(
                        'Ovetskak',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        '+380 (66) 598 76 18',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      iconColor: Colors.white,
                      collapsedIconColor: Colors.white,
                      children: <Widget>[
                        ...accountsList,
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).drawerTheme.backgroundColor,
                          ),
                          child: const ListTile(
                            title: Row(
                              children: [
                                SizedBox(width: 4,),
                                Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                  size: 32,
                                ),
                                SizedBox(width: 22,),
                                Text(
                                  'Add account',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ...customDrawerItemList.getRange(0, 6),

            Divider(
              height: 24,
              color: Theme.of(context).dividerColor,
            ),

            ...customDrawerItemList.getRange(6, customDrawerItemList.length),

          ],
        ),
      ),
      floatingActionButton: Wrap(
        spacing: 12,
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.end,
        children: [
          FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) {
                  return const SecondScreenTabs();
                }),
              );
            },
            child: const Icon(
              Icons.tab,
              color: Colors.white,
            ),
          ),
          FloatingActionButton.extended(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) {
                  return const SecondScreenPages();
                }),
              );
            },
            label: const Text('Pages'),
            icon: const Icon(
              Icons.pages,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          return chatList[index];
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: .5,
            thickness: .2,
            color: Theme.of(context).textTheme.bodyMedium!.color!.withOpacity(.4),
          );
        },
      ),
    );
  }
}