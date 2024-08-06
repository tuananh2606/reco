import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:reco/bloc/manga_bloc/manga_bloc.dart';
import 'package:reco/common/widgets/card/card_item.dart';
import 'package:reco/common/widgets/layout/grid_layout.dart';
import 'package:reco/utils/constants/sizes.dart';
import 'package:reco/utils/device/device_utility.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final MangaBloc mangaBloc = MangaBloc();
  final ScrollController _scrollController = ScrollController();
  late int page = 2;

  @override
  void initState() {
    context.read<MangaBloc>().add(const MangaEvent.fetchManga('latest', '1'));
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  Future<void> _refresh() async {
    context.read<MangaBloc>().add(const MangaEvent.fetchManga('latest', '1'));
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<MangaBloc>().add(MangaEvent.fetchManga('latest', page.toString()));
      setState(() {
        page = page + 1;
      });
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= maxScroll * 0.9;
  }

  @override
  Widget build(BuildContext context) {
    final imgList = <String>[
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
    ];
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(Sizes.defaultSpace),
                child: CarouselSlider(
                  items: imgList
                      .map(
                        (item) => GestureDetector(
                          child: Image.network(
                            item,
                            width: DeviceUtils.getScreenWidth(context),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(viewportFraction: 1, height: 120),
                ),
              ),
              BlocBuilder<MangaBloc, MangaState>(
                buildWhen: (previous, current) {
                  log((previous != current).toString());
                  return previous != current;
                },
                builder: (context, state) {
                  switch (state.status) {
                    case MangaStatus.initial:
                      context.loaderOverlay.show();
                    case MangaStatus.loading:
                      context.loaderOverlay.show();
                    case MangaStatus.success:
                      context.loaderOverlay.hide();
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace / 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Latest Updates',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(
                              height: Sizes.spaceBtwItems,
                            ),
                            GridLayout(
                              itemCount: state.mangas.results.length,
                              itemBuilder: (context, index) => CardItem(
                                img: state.mangas.results[index].img!,
                                title: state.mangas.results[index].title,
                                id: state.mangas.results[index].id!,
                              ),
                            ),
                            if (_isBottom)
                              const Center(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 1.5,
                                    ),
                                  ),
                                ),
                              )
                            else
                              const SizedBox(),
                          ],
                        ),
                      );
                    case MangaStatus.error:
                  }
                  return const SizedBox();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
