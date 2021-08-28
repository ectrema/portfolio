import 'package:flutter/material.dart';
import 'package:portofolio/core/widget/x_bottom_sheet.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: MainWidget(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: PortofolioWidget(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 80,
            child: SkillsWidget(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SchoolsWidget(),
          ),
          XBottomSheet(),
        ],
      ),
    );
  }
}
