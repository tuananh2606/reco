import 'package:flutter/material.dart';
import 'package:reco/l10n/l10n.dart';
import 'package:reco/router.dart';
import 'package:reco/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: LRouter.router,
    );
  }
}
