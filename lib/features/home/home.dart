import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/common/constant/colors.dart';
import 'package:news_app_clean_architecture/common/constant/styles.dart';
import 'package:news_app_clean_architecture/common/widget/app_bar.dart';
import 'package:news_app_clean_architecture/features/movies/presentation/screen/movies.dart';
import 'package:news_app_clean_architecture/features/new/presentation/screen/home_new.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: background,
        appBar: AppBarCpn(
          left: Container(),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                controller: controller,
                labelStyle: h4(context: context, fontWeight: '700'),
                unselectedLabelStyle: h4(context: context, fontWeight: '600'),
                labelColor: tiffanyBlue,
                unselectedLabelColor: grayBlue,
                indicatorColor: tiffanyBlue,
                indicatorWeight: 0,
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(width: 2.0, color: tiffanyBlue),
                    insets: EdgeInsets.only(top: 20, bottom: 5, right: 25)),
                tabs: [
                  Tab(text: 'News'.tr()),
                  Tab(text: 'Movie'.tr()),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: const [HomeNewsPage(), MoviesHomePage()],
        ),
      ),
    );
  }
}
