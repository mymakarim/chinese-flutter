import 'package:chinese/utils/constant.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  final PageController controller = PageController();
  int currentPage = 0;

  final List<Widget> _pages = [
    Container(
      decoration: const BoxDecoration(
        color: Constant.mytheme,
        image: DecorationImage(
          image: AssetImage('assets/images/01/banner/yg_app_banner_006@1x.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      decoration: const BoxDecoration(
        color: Constant.mytheme,
        image: DecorationImage(
          image: AssetImage('assets/images/01/banner/yg_app_banner_008@1x.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      decoration: const BoxDecoration(
        color: Constant.mytheme,
        image: DecorationImage(
          image: AssetImage('assets/images/01/banner/yg_app_banner_009@3x.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 170,
        child: Stack(
          children: [
            PageView(
              controller: controller,
              children: _pages,
              onPageChanged: _onPageChanged,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(_pages.length, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: currentPage == index ? Colors.white : Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onPageChanged(int index) => setState(() => currentPage = index);
}
