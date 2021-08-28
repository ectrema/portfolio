import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class SchoolsWidget extends StatelessWidget {
  const SchoolsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).canvasColor,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.study,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Expanded(child: SizedBox()),
                _buildStudy('24/08/20 - 07/09/21',AppLocalizations.of(context)!.licenceLyon, context),
                const Expanded(child: SizedBox()),
                _buildStudy('2018 - 2019', AppLocalizations.of(context)!.btsVenisieux, context),
                const Expanded(child: SizedBox()),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Expanded(child: SizedBox()),
                _buildStudy('2017 - 2018', AppLocalizations.of(context)!.iutArles, context),
                const Expanded(child: SizedBox()),
                _buildStudy('2017', AppLocalizations.of(context)!.baccalaureate, context),
                const Expanded(child: SizedBox()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStudy(String date, String subtitle, BuildContext context) {
    return Expanded(
      flex: 4,
      child: ListTile(
        title: Text(
          date,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
        subtitle: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor.withOpacity(0.5),
          ),
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
