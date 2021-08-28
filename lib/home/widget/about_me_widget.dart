import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).canvasColor,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.aboutMe,
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
          Expanded(
            child: Wrap(
              children: [
                _buildInfos(AppLocalizations.of(context)!.birthday, '16/07/1999',
                    context),
                _buildInfos(
                  AppLocalizations.of(context)!.age,
                  '${DateTime.now().year - 1999}' +
                      ' ' +
                      AppLocalizations.of(context)!.year,
                  context,
                ),
                _buildInfos(
                  AppLocalizations.of(context)!.mobility,
                  AppLocalizations.of(context)!.driveLicense,
                  context,
                ),
                _buildInfos(
                  AppLocalizations.of(context)!.company,
                  AppLocalizations.of(context)!.myCompany,
                  context,
                ),
                _buildInfos(
                  AppLocalizations.of(context)!.job,
                  AppLocalizations.of(context)!.myJob,
                  context,
                ),
                _buildInfos(
                  AppLocalizations.of(context)!.lastDegree,
                  AppLocalizations.of(context)!.myLastDegree,
                  context,
                ),
                _buildInfos(
                  AppLocalizations.of(context)!.interest,
                  AppLocalizations.of(context)!.myInterest,
                  context,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfos(String text, String text2, BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 15, 10, 15),
      padding: const EdgeInsets.all(15),
      color: Theme.of(context).accentColor.withOpacity(0.5),
      child: Text(
        '$text : $text2',
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
