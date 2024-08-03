import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reco/bloc/manga_bloc/manga_bloc.dart';
import 'package:reco/common/widgets/carousel/carousel_slider.dart';
import 'package:reco/common/widgets/tabbar/switch_tabbar.dart';
import 'package:reco/utils/constants/sizes.dart';
import 'package:reco/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String searchQuery = '';
  int _currentIndex = 0;
  final CarouselController _carouselController = CarouselController();
  final TextEditingController _searchController = TextEditingController();
  final MangaBloc _mangaBloc = MangaBloc();
  Timer? _debounce;
  late FocusNode _searchFocusNode;
  bool _focused = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _searchFocusNode = FocusNode();
    _searchFocusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _tabController.dispose();
    _searchFocusNode.removeListener(_onFocusChange);
    _searchController.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (_searchFocusNode.hasFocus != _focused) {
      setState(() {
        _focused = _searchFocusNode.hasFocus;
      });
    }
  }

  void _onSearchChanged(String query) {
    EasyDebounce.debounce('searchDebouncer', const Duration(milliseconds: 2000), () {
      if (query.isEmpty) {
        return;
      }
      //_mangaBloc.add(MangaSearchEvent(query: query));
    });
  }

  @override
  Widget build(BuildContext context) {
    const tabs = <Tab>[
      Tab(text: 'Search'),
      Tab(text: 'ALL'),
    ];
    const imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    ];

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60, top: 40, bottom: 6),
              child: Container(
                height: 30,
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(6)),
                child: SwitchTabBar(
                  tabController: _tabController,
                  tabs: tabs,
                ),
              ),
            ),
          ],
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.grey.shade900,
              expandedHeight: 58,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(Sizes.sm),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: Sizes.xs),
                        child: SearchBar(
                          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          ),
                          focusNode: _searchFocusNode,
                          onChanged: _onSearchChanged,
                          constraints: const BoxConstraints(
                            minHeight: 56,
                            maxWidth: 300,
                          ),
                          trailing: [
                            if (_searchController.text.isNotEmpty)
                              IconButton(
                                onPressed: () {
                                  _searchController.text = '';
                                  setState(() {
                                    searchQuery = '';
                                  });
                                },
                                icon: const Icon(
                                  LineIcons.timesCircle,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ),
                          ],
                          shadowColor: WidgetStateColor.transparent,
                          onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                          controller: _searchController,
                          overlayColor: WidgetStateColor.transparent,
                          hintText: 'Search by title',
                          leading: const Icon(LineIcons.search),
                        ),
                      ),
                    ),
                    if (_focused)
                      TextButton(
                        onPressed: () {
                          _searchController.text = '';
                          _searchFocusNode.unfocus();
                        },
                        child: const Text('Cancel'),
                      )
                    else
                      const SizedBox(),
                  ],
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            if (_searchController.text.isEmpty || _searchController.text == '')
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    CarouselSlider(
                      carouselController: _carouselController,
                      items: imgList
                          .map(
                            (item) => GestureDetector(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.network(
                                  item,
                                  width: DeviceUtils.getScreenWidth(context),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 10),
                        viewportFraction: 1,
                        height: 160,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    AnimatedSmoothIndicator(
                      activeIndex: _currentIndex,
                      count: imgList.length,
                      effect: ExpandingDotsEffect(
                        dotWidth: 8,
                        dotHeight: 8,
                        expansionFactor: 4,
                        activeDotColor: Theme.of(context).primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: Sizes.spaceBtwSections,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(Sizes.sm),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('By Genre', style: Theme.of(context).textTheme.titleLarge),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Wrap(
                              spacing: 8,
                              runSpacing: -4,
                              children: [
                                Chip(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  padding: EdgeInsets.zero,
                                  labelPadding: const EdgeInsets.symmetric(horizontal: 16),
                                  label: const Text('Battle / Action'),
                                ),
                                Chip(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  labelPadding: const EdgeInsets.symmetric(horizontal: 16),
                                  padding: EdgeInsets.zero,
                                  label: const Text('Comedy'),
                                ),
                                Chip(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  labelPadding: const EdgeInsets.symmetric(horizontal: 16),
                                  padding: EdgeInsets.zero,
                                  label: const Text('Mystery / Thriller'),
                                ),
                                Chip(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  labelPadding: const EdgeInsets.symmetric(horizontal: 16),
                                  padding: EdgeInsets.zero,
                                  label: const Text('Aaron Burr'),
                                ),
                                Chip(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  labelPadding: const EdgeInsets.symmetric(horizontal: 16),
                                  padding: EdgeInsets.zero,
                                  label: const Text('Aaron Burr'),
                                ),
                              ],
                            ),
                          ),
                          Image.network(
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
                          ),
                          const RCarouselSlider(title: 'ORTHERS', items: imgList),
                          const RCarouselSlider(title: 'ORTHERS', items: imgList),
                          const RCarouselSlider(title: 'ORTHERS', items: imgList),
                          const RCarouselSlider(title: 'ORTHERS', items: imgList),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            else
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: BlocBuilder(
                  bloc: _mangaBloc,
                  builder: (context, state) {
                    // switch (state.runtimeType) {
                    //   case MangaFetchingLoadingState:
                    //     return SizedBox(
                    //       height: DeviceUtils.getScreenHeight(context),
                    //       child: const Center(
                    //         child: CircularProgressIndicator(),
                    //       ),
                    //     );
                    //   case MangaSearchSuccessfulState:
                    //     final successState = state! as MangaSearchSuccessfulState;
                    //     return GridLayout(
                    //       itemCount: successState.manga.results.length,
                    //       itemBuilder: (_, index) => CardItem(
                    //         img: successState.manga.results[index].img1!,
                    //         title: successState.manga.results[index].title,
                    //         id: successState.manga.results[index].id!,
                    //       ),
                    //     );
                    // }
                    return SizedBox(
                      height: DeviceUtils.getScreenHeight(context) * 0.3,
                      child: const Center(child: CircularProgressIndicator()),
                    );
                  },
                ),
              ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: BlocBuilder(
                bloc: _mangaBloc,
                builder: (context, state) {
                  // switch (state.runtimeType) {
                  //   case MangaFetchingLoadingState:
                  //     return SizedBox(
                  //       height: DeviceUtils.getScreenHeight(context),
                  //       child: const Center(
                  //         child: CircularProgressIndicator(),
                  //       ),
                  //     );
                  //   case MangaSearchSuccessfulState:
                  //     final successState = state! as MangaSearchSuccessfulState;
                  //     return GridLayout(
                  //       itemCount: successState.manga.results.length,
                  //       itemBuilder: (_, index) => CardItem(
                  //         img: successState.manga.results[index].img1!,
                  //         title: successState.manga.results[index].title,
                  //         id: successState.manga.results[index].id!,
                  //       ),
                  //     );
                  // }
                  return SizedBox(
                    height: DeviceUtils.getScreenHeight(context) * 0.3,
                    child: const Center(child: CircularProgressIndicator()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
