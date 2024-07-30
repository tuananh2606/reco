import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:reco/bloc/manga_bloc/manga_bloc.dart';
import 'package:reco/utils/constants/sizes.dart';
import 'package:reco/utils/device/device_utility.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({required this.id, super.key});
  final String id;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final MangaBloc _mangaBloc = MangaBloc();
  final MangaBloc _pageBloc = MangaBloc();
  @override
  void initState() {
    super.initState();
    _mangaBloc.add(MangaDetailsEvent(id: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(LineIcons.star),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(LineIcons.language),
            onPressed: () {},
          ),
          IconButton(
            padding: const EdgeInsets.only(bottom: 4),
            icon: const Icon(Icons.ios_share),
            onPressed: () {},
          ),
        ],
      ),
      body: BlocBuilder(
        bloc: _mangaBloc,
        builder: (context, state) {
          switch (state.runtimeType) {
            case MangaFetchingLoadingState:
              return SizedBox(
                height: DeviceUtils.getScreenHeight(context),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            case MangaDetailsSuccessfulState:
              final successState = state! as MangaDetailsSuccessfulState;
              final tabsLength = (successState.manga.results.chapters!.length / 50).ceil();
              return DefaultTabController(
                length: tabsLength,
                child: NestedScrollView(
                  headerSliverBuilder: (_, innerBoxIsScrolled) {
                    return [
                      SliverToBoxAdapter(
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            CachedNetworkImage(
                              imageUrl: successState.manga.results.img1!,
                              height: 160,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            ListTile(
                              title: Text(
                                successState.manga.results.title,
                                style: const TextStyle(fontWeight: FontWeight.w600),
                              ),
                              subtitle: Text(
                                successState.manga.results.author,
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SliverAppBar(
                        automaticallyImplyLeading: false,
                        pinned: true,
                        floating: true,
                        toolbarHeight: 0,
                        backgroundColor: Colors.black,
                        forceElevated: innerBoxIsScrolled,
                        bottom: PreferredSize(
                          preferredSize: const Size.fromHeight(78),
                          child: Column(
                            children: [
                              Container(
                                color: Colors.grey.shade900,
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(horizontal: Sizes.md, vertical: Sizes.sm),
                                child: Text(
                                  'Chapters',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                              TabBar(
                                isScrollable: true,
                                indicatorColor: Theme.of(context).primaryColor,
                                indicatorSize: TabBarIndicatorSize.tab,
                                tabAlignment: TabAlignment.start,
                                tabs: [
                                  ...List.generate(tabsLength, (index) {
                                    final first = index * 50 + 1;
                                    final last = (index + 1) * 50;
                                    return Tab(
                                      height: 40,
                                      child: Text(
                                        '$first - $last',
                                        style: Theme.of(context).textTheme.titleSmall,
                                      ),
                                    );
                                  }),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ];
                  },
                  body: TabBarView(
                    children: [
                      ...List.generate(tabsLength, (index) {
                        final first = index * 50;
                        final last = (index + 1) * 50 > successState.manga.results.chapters!.length
                            ? successState.manga.results.chapters!.length
                            : (index + 1) * 50;
                        final itemCount = last - first;
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: Sizes.xs),
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: itemCount,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                width: double.infinity,
                                child: TextButton(
                                  style: TextButton.styleFrom(alignment: Alignment.centerLeft),
                                  onPressed: () {
                                    _pageBloc.add(
                                      MangaGetChapterPagesEvent(
                                          id: successState.manga.results.chapters!.sublist(first, last)[index].id!),
                                    );
                                    showMaterialModalBottomSheet(
                                      expand: true,
                                      context: context,
                                      backgroundColor: Colors.black,
                                      builder: (context) => BlocBuilder(
                                        bloc: _pageBloc,
                                        builder: (context, state) {
                                          switch (state.runtimeType) {
                                            case MangaFetchingLoadingState:
                                              return SizedBox(
                                                height: DeviceUtils.getScreenHeight(context),
                                                child: const Center(
                                                  child: CircularProgressIndicator(),
                                                ),
                                              );
                                            case MangaGetChapterPagesSuccessfulState:
                                              final pageState = state! as MangaGetChapterPagesSuccessfulState;
                                              return NestedScrollView(
                                                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                                                  return <Widget>[
                                                    SliverAppBar(
                                                      floating: true,
                                                      snap: true,
                                                      //leading: const Icon(LineIcons.times),
                                                      backgroundColor: Colors.grey.shade900.withOpacity(0.9),
                                                      title: Text(
                                                        successState.manga.results.chapters!
                                                            .sublist(first, last)[index]
                                                            .title!,
                                                        style: Theme.of(context).textTheme.titleMedium,
                                                      ),

                                                      // centerTitle: true,
                                                      actions: const [
                                                        Icon(LineIcons.cog),
                                                        Icon(CupertinoIcons.list_bullet),
                                                      ],
                                                    ),
                                                  ];
                                                },
                                                body: ListView.builder(
                                                  itemBuilder: (context, index) {
                                                    return CachedNetworkImage(
                                                      httpHeaders: const {
                                                        'Referer': 'https://manganato.com/',
                                                      },
                                                      placeholder: (context, url) =>
                                                          LoadingAnimationWidget.halfTriangleDot(
                                                        color: Colors.grey,
                                                        size: 40,
                                                      ),
                                                      imageUrl: pageState.pages.results[index],
                                                    );
                                                  },
                                                  itemCount: pageState.pages.results.length,
                                                ),
                                              );
                                          }
                                          return SizedBox(
                                            height: DeviceUtils.getScreenHeight(context),
                                            child: const Center(
                                              child: CircularProgressIndicator(),
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  child: Text(
                                    successState.manga.results.chapters!.sublist(first, last)[index].title!,
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              );
          }
          return SizedBox(
            height: DeviceUtils.getScreenHeight(context) * 0.3,
            child: const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
