import 'package:flutter/material.dart';
import 'package:portofolio/core/widget/x_bottom_sheet.dart';
import 'package:portofolio/home/widget/about_me_widget.dart';
import 'package:portofolio/home/widget/header_widget.dart';
import 'package:portofolio/home/widget/main_widget.dart';
import 'package:portofolio/home/widget/portofolio_widget.dart';
import 'package:portofolio/home/widget/shools_widget.dart';
import 'package:portofolio/home/widget/skills_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    ScrollController controller = ScrollController();
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        children: [
          SizedBox(
            height: getHeight(context),
            child: Column(
              children: [
                HeaderWidget(controller),
                MainWidget(),
              ],
            ),
          ),
          SizedBox(
            height: getHeight(context),
            child: AboutMeWidget(),
          ),
          SizedBox(
            height: getHeight(context),
            child: PortofolioWidget(),
          ),
          SizedBox(
            height: getHeight(context),
            child: SkillsWidget(),
          ),
          SizedBox(
            height: getHeight(context),
            child: SchoolsWidget(),
          ),
          XBottomSheet(),
        ],
      ),
    );
  }

  double getHeight(BuildContext context) {
    if (MediaQuery.of(context).size.height < 750 ||
        MediaQuery.of(context).size.width < 550) {
      return 1000;
    } else {
      return MediaQuery.of(context).size.height;
    }
  }
}
