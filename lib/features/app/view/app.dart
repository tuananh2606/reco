import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:reco/bloc/favourite_bloc/favourite_bloc.dart';
import 'package:reco/bloc/manga_bloc/detail_bloc/manga_detail_bloc.dart';
import 'package:reco/bloc/manga_bloc/manga_bloc.dart';
import 'package:reco/bloc/manga_bloc/pages_chapter_bloc/pages_bloc.dart';
import 'package:reco/bloc/manga_bloc/search_bloc/manga_search_bloc.dart';
import 'package:reco/l10n/l10n.dart';
import 'package:reco/router.dart';
import 'package:reco/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => MangaBloc(),
        ),
        BlocProvider(
          create: (BuildContext context) => MangaDetailBloc(),
        ),
        BlocProvider(
          create: (BuildContext context) => MangaPagesBloc(),
        ),
        BlocProvider(
          create: (BuildContext context) => MangaSearchBloc(),
        ),
        BlocProvider(
          create: (BuildContext context) => FavouriteBloc(),
        ),
      ],
      child: GlobalLoaderOverlay(
        duration: Durations.short3,
        reverseDuration: Durations.short3,
        overlayColor: Colors.grey.withOpacity(0.2),
        child: MaterialApp.router(
          darkTheme: AppTheme.darkTheme,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: LRouter.router,
        ),
      ),
    );
  }
}
