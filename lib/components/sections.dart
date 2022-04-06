import 'package:flutter/material.dart';

class SectionsWidget extends StatefulWidget {
  const SectionsWidget({Key? key}) : super(key: key);

  @override
  State<SectionsWidget> createState() => _SectionsWidgetState();
}

class _SectionsWidgetState extends State<SectionsWidget> {
  int _selectedIndex = 0;

  final List<List<String>> _sections = [
    ['home_ent_AGby1@3x.png', 'home_ent_AGby2d@3x.png', 'home_ent_AGby3d@3x.png', 'home_ent_AGbyly@3x.png'],
    ['home_ent_AGdz@3x.png', 'home_ent_AGdz1y@3x.png', 'home_ent_AGtjlr@3x.png', 'home_ent_AGty1@3x.png'],
    ['home_ent_BBby1@3x.png', 'home_ent_BBbyd1@3x.png', 'home_ent_BBbyd2@3x.png', 'home_ent_BBcp1@3x.png'],
    ['home_ent_BBdz1@3x.png', 'home_ent_BBdzy1@3x.png', 'home_ent_BBfgy1@3x.png', 'home_ent_BBqj1@3x.png'],
    ['home_ent_BBty1@3x.png', 'home_ent_BBxty1@3x.png', 'home_ent_BGby@3x.png', 'home_ent_BGcp@3x.png'],
    ['home_ent_BGdz@3x.png', 'home_ent_BGqp@3x.png', 'home_ent_BGsx@3x.png', 'home_ent_CQ9dz1@3x.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      fillOverscroll: true,
      child: Row(
        children: <Widget>[
          NavigationRail(
            backgroundColor: Colors.transparent,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) => setState(() => _selectedIndex = index),
            labelType: NavigationRailLabelType.none,
            destinations: _getNavigationRailDestination,
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Container(
              height: double.infinity,
              color: Colors.transparent,
              margin: const EdgeInsets.only(right: 10),
              child: Column(
                children: List.generate(_sections[_selectedIndex].length, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 85,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/01/images/${_sections[_selectedIndex][index]}'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<NavigationRailDestination> get _getNavigationRailDestination {
    return <NavigationRailDestination>[
      NavigationRailDestination(
        icon: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Image.asset(_selectedIndex == 0 ? 'assets/images/01/icons/ho_ld1@3x.png' : 'assets/images/01/icons/ho_ld2@3x.png', width: 50),
        ),
        label: const Text('首页'),
      ),
      NavigationRailDestination(
        icon: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Image.asset(_selectedIndex == 1 ? 'assets/images/01/icons/ho_lc1@3x.png' : 'assets/images/01/icons/ho_lc2@3x.png', width: 50),
        ),
        label: const Text('优惠'),
      ),
      NavigationRailDestination(
        icon: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Image.asset(_selectedIndex == 2 ? 'assets/images/01/icons/ho_ls1@3x.png' : 'assets/images/01/icons/ho_ls2@3x.png', width: 50),
        ),
        label: const Text('存款'),
      ),
      NavigationRailDestination(
        icon: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Image.asset(_selectedIndex == 3 ? 'assets/images/01/icons/ho_lq1@3x.png' : 'assets/images/01/icons/ho_lq2@3x.png', width: 50),
        ),
        label: const Text('存款'),
      ),
      NavigationRailDestination(
        icon: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Image.asset(_selectedIndex == 4 ? 'assets/images/01/icons/ho_lb1@3x.png' : 'assets/images/01/icons/ho_lb2@3x.png', width: 50),
        ),
        label: const Text('存款'),
      ),
    ];
  }
}
