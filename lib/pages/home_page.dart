import 'package:chinese/components/marquee.dart';
import 'package:chinese/components/sections.dart';
import 'package:chinese/components/slider.dart';
import 'package:chinese/pages/account_page.dart';
import 'package:chinese/utils/constant.dart';
import 'package:chinese/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int currentTabIndex = 0;

  Map<int, dynamic>? _appbars;

  @override
  void initState() {
    super.initState();
    _appbars = {
      0: _appbar,
      1: _appbar,
      2: _appbar,
      3: _appbar,
      4: _appbarAccount,
    };
    _tabController = TabController(length: 5, vsync: this);
    _tabController?.addListener(_onTabChanged);
  }

  void _onTabChanged() {
    setState(() => currentTabIndex = _tabController!.index);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: UIHelper.systemUiOverlayStyle,
      child: Scaffold(
        backgroundColor: Constant.mytheme,
        appBar: _appbars![currentTabIndex],
        bottomNavigationBar: _bottomNavigationBar,
        body: TabBarView(
          children: [
            CustomScrollView(
              slivers: [
                const SliderWidget(),
                _marqueeText(),
                _labelsAndButtons(),
                const SectionsWidget(),
              ],
            ),
            Container(color: Colors.green),
            Container(color: Colors.blue),
            Container(color: Colors.red),
            const AccountPage(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }

  SliverToBoxAdapter _labelsAndButtons() {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 70,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '123412abc',
                        style: TextStyle(color: Colors.yellow[600], fontSize: 16),
                        maxLines: 1,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Image.asset('assets/images/01/icons/ho_vip@2x.png'),
                      ),
                      Text(
                        'VIP12',
                        style: TextStyle(color: Colors.yellow[600]),
                        maxLines: 1,
                      ),
                    ],
                  ),
                  const Text(
                    '¥312123122.00',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _item(onTap: () {}, title: '存款'),
                  _item(
                    onTap: () {},
                    title: '转账',
                    imageUrl: 'assets/images/01/icons/ho_zz@3x.png',
                  ),
                  _item(
                    onTap: () {},
                    title: '取款',
                    imageUrl: 'assets/images/01/icons/ho_zq@3x.png',
                  ),
                  _item(
                    onTap: () {},
                    title: 'VIP',
                    imageUrl: 'assets/images/01/icons/ho_zv@3x.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _item({GestureTapCallback? onTap, String title = '存款', String imageUrl = 'assets/images/01/icons/ho_zc@3x.png'}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Expanded(child: Image.asset(imageUrl)),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _marqueeText() {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        child: Row(
          children: [
            SizedBox(
              height: 25,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Image.asset('assets/images/01/icons/ho_ann@3x.png', height: 25),
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: Marquee(
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                  text: '公告：最新消息 : 欢迎莅临新葡京，感受无与伦比线上游戏! 2020 欢迎加入新葡京娱乐城',
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  get _bottomNavigationBar => Material(
        color: Constant.mytheme,
        child: Card(
          margin: const EdgeInsets.only(bottom: 0, right: 0, left: 0, top: 5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          color: Constant.mytheme,
          child: TabBar(
            labelStyle: const TextStyle(fontSize: 14),
            controller: _tabController,
            tabs: [
              Tab(
                text: '首页',
                icon: Image.asset('assets/images/01/icons/nav_s1@3x.png', height: 28),
              ),
              Tab(
                text: '优惠',
                icon: Image.asset('assets/images/01/icons/nav_y2@3x.png', height: 28),
              ),
              Tab(
                text: '存款',
                icon: Image.asset('assets/images/01/icons/nav_c2@3x.png', height: 28),
              ),
              Tab(
                text: '客服',
                icon: Image.asset('assets/images/01/icons/nav_k2@3x.png', height: 28),
              ),
              Tab(
                text: '个人',
                icon: Image.asset('assets/images/01/icons/nav_g2@3x.png', height: 28),
              ),
            ],
          ),
        ),
      );

  get _appbar => AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Image.asset('assets/images/01/icons/ho_line@2x.png'),
        ),
        title: Image.asset('assets/images/01/icons/ho_logo@3x.png', height: 45),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/01/icons/ho_mess@3x.png'),
          ),
        ],
      );
  get _appbarAccount => AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff1F1F1F),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/02/icons/my_set.png'),
          ),
        ],
      );
}
