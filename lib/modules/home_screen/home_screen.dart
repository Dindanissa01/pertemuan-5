import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tugas05/configs/app_routes.dart';
import 'package:tugas05/models/user.dart';

import 'home_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.user,
  });
  final User user;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late Size size;

  tapBottomItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: HeaderWidget(
                user: widget.user,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: SearchFieldWidget(),
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: SectionTitle(
                    label: "Hotest News",
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: InkWell(
                    onTap: (){
                      GoRouter.of(context).goNamed(
                        AppRoutes.newsDetailHot,
                      );
                    },
                    child: HotestNewsCard(
                      size: size,
                      newsTitle: "Tiket Konser Suga BTS di Indonesia ",
                      pictureUrl: "data:image/jpeg;base64,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", 
                      onTap: () {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: SectionTitle(
                    label: "Latest News",
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: LatestNewsIndexCardSection(
                    size: size,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: tapBottomItem,
        items: [
          bottomMenuItem(
            "Home",
            Icons.home_rounded,
          ),
          bottomMenuItem(
            "News",
            Icons.newspaper_rounded,
          ),
          bottomMenuItem(
            "Menu",
            Icons.menu_rounded,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomMenuItem(
    String label,
    IconData iconData,
  ) {
    return BottomNavigationBarItem(
      label: label,
      icon: Icon(
        iconData,
      ),
    );
  }
}