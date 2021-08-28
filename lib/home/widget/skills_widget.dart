import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      color: Theme.of(context).canvasColor,
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.mySkills,
            style: Theme.of(context).textTheme.headline2,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            width: 500,
            child: Divider(
              thickness: 3,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Text(
            AppLocalizations.of(context)!.mySkillsSubtitle,
            style: Theme.of(context).textTheme.headline5,
          ),
          const Expanded(child: SizedBox()),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'flutter.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'cpp.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'c.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'golang.png',
                  ),
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'docker.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'github.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'jira.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'sql.png',
                  ),
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'linux.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'laravel.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'java.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'apple.png',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}