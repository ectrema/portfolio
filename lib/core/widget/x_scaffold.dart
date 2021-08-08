import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class XScaffold extends StatefulWidget {
  final Widget child;
  final int indexNavigation;
  const XScaffold({
    Key? key,
    required this.child,
    required this.indexNavigation,
  }) : super(key: key);

  @override
  _XScaffoldState createState() => _XScaffoldState();
}

class _XScaffoldState extends State<XScaffold> {
  bool changeExtende = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          _buildNavigationRail(),
          widget.child,
        ],
      ),
    );
  }

  Widget _buildNavigationRail() {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          changeExtende = true;
        });
      },
      onExit: (value) {
        setState(() {
          changeExtende = false;
        });
      },
      child: NavigationRail(
        minWidth: 100,
        selectedIndex: widget.indexNavigation,
        extended: changeExtende,
        onDestinationSelected: (int index) {},
        destinations: [
          NavigationRailDestination(
            icon: Icon(Icons.home),
            label: Text('home'.tr),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.account_box),
            label: Text('aboutMe'.tr),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.file_present),
            label: Text('project'.tr),
          ),
        ],
        leading: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Get.updateLocale(Locale('fr', 'FR'));
                },
                child: SizedBox(
                  width: 25,
                  child: Flag.fromCode(FlagsCode.FR),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.updateLocale(Locale('en', 'US'));
                },
                child: SizedBox(
                  width: 25,
                  child: Flag.fromCode(FlagsCode.US),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
