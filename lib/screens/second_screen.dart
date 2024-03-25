import 'package:flutter/material.dart';
import 'package:material_app/screens/views.dart';

Map<Widget, (Icon, Icon, String)> map = {
  const View1(): ( const Icon(Icons.fast_rewind_outlined), const Icon(Icons.fast_rewind), 'Lol' ),
  const View2(): ( const Icon(Icons.pause_circle_outlined), const Icon(Icons.pause_circle_filled), 'Kek' ),
  const View3(): ( const Icon(Icons.fast_forward_outlined), const Icon(Icons.fast_forward), 'Cheburek' ),
};

class SecondScreenPages extends StatefulWidget {
  const SecondScreenPages({super.key});

  @override
  State<SecondScreenPages> createState() => _SecondScreenPagesState();
}

class _SecondScreenPagesState extends State<SecondScreenPages> {

  late final PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PageView',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: map.keys.toList(),
        onPageChanged: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 200),
            curve: Curves.bounceOut,
          );
        },
        items: map.values.map((nav) =>
            BottomNavigationBarItem(
              icon: nav.$1,
              activeIcon: nav.$2,
              label: nav.$3,
            )).toList(),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}


class SecondScreenTabs extends StatefulWidget {
  const SecondScreenTabs({super.key});

  @override
  State<SecondScreenTabs> createState() => _SecondScreenTabsState();
}

class _SecondScreenTabsState extends State<SecondScreenTabs>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;
  int _viewIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: map.entries.length,
      vsync: this,
    );
    _tabController.addListener(setViewIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TabBarView',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: map.keys.toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _viewIndex,
        onTap: (index) {
          setState(() {
            _viewIndex = index;
            _tabController.animateTo(index);
          });
        },
        items: map.values.map((nav) =>
            BottomNavigationBarItem(
              icon: nav.$1,
              activeIcon: nav.$2,
              label: nav.$3,
            )).toList(),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.removeListener(setViewIndex);
    _tabController.dispose();
    super.dispose();
  }

  void setViewIndex() {
    setState(() {
      _viewIndex = _tabController.index;
    });
  }
}