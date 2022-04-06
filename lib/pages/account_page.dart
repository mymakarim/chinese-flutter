import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1F1F1F),
      child: CustomScrollView(
        slivers: [
          _profile(),
          _buttons(),
          _settinsGroup1(),
          _settinsGroup2(),
          _settinsGroup3(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _settinsGroup3() {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff121212),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            _item(
              'assets/images/02/icons/icon_shou@2x.png',
              '交易记录',
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _settinsGroup2() {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff121212),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            _item(
              'assets/images/02/icons/my_yin@2x.png',
              '交易记录',
            ),
            Divider(color: Colors.grey.shade900),
            _item(
              'assets/images/02/icons/my_ge@2x.png',
              '稽核记录',
            ),
            Divider(color: Colors.grey.shade900),
            _item(
              'assets/images/02/icons/my_ts@2x.png',
              '投注记录',
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _settinsGroup1() {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff121212),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            _item(
              'assets/images/02/icons/my_jiao@2x.png',
              '交易记录',
            ),
            Divider(color: Colors.grey.shade900),
            _item(
              'assets/images/02/icons/my_ji@2x.png',
              '稽核记录',
            ),
            Divider(color: Colors.grey.shade900),
            _item(
              'assets/images/02/icons/my_tou@2x.png',
              '投注记录',
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buttons() {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.only(top: 10),
        margin: const EdgeInsets.only(top: 15, right: 10, left: 10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        height: 100,
        child: Row(
          children: [
            _button(
              imageUrl: 'assets/images/02/icons/my_save@3x.png',
              title: '存款',
              onTap: () {},
            ),
            _button(
              imageUrl: 'assets/images/02/icons/my_draw@3x.png',
              title: '出款',
              onTap: () {},
            ),
            _button(
              imageUrl: 'assets/images/02/icons/my_rec@3x.png',
              title: '记录',
              onTap: () {},
            ),
            _button(
              imageUrl: 'assets/images/02/icons/my_rec@3x.png',
              title: '优惠',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _profile() {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 150,
        child: GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                padding: const EdgeInsets.all(10),
                width: 80,
                height: 80,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/02/icons/my_por@3x.png'), fit: BoxFit.fitWidth),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'BOSS_2020678',
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
                            '当前余额：5892000.00',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30),
            ],
          ),
        ),
      ),
    );
  }

  _button({GestureTapCallback? onTap, String title = '存款', String imageUrl = 'assets/images/01/icons/ho_zc@3x.png'}) {
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

  ListTile _item(String imageUrl, String title) {
    return ListTile(
      onTap: () {},
      leading: Image.asset(imageUrl),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: SizedBox(
        width: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                '交易记录',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
