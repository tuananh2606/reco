import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reco/bloc/manga_bloc/manga_bloc.dart';
import 'package:reco/utils/device/device_utility.dart';

enum SegmentType { horizontal, vertical }

class DetailScreen extends StatefulWidget {
  const DetailScreen({required this.id, super.key});
  final String id;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final MangaBloc _mangaBloc = MangaBloc();
  final MangaBloc _pageBloc = MangaBloc();
  late SegmentType readingDirection = SegmentType.vertical;
  final ScrollController _controller = ScrollController();
  bool _isVisible = true;

  void _listen() {
    switch (_controller.position.userScrollDirection) {
      case ScrollDirection.idle:
        break;
      case ScrollDirection.forward:
        _show();
      case ScrollDirection.reverse:
        _hide();
    }
  }

  void _show() {
    if (!_isVisible) {
      setState(() => _isVisible = true);
    }
  }

  void _hide() {
    if (_isVisible) {
      setState(() => _isVisible = false);
    }
  }

  @override
  void initState() {
    _controller.addListener(_listen);
    //_mangaBloc.add(MangaDetailsEvent(id: widget.id));
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_listen);
    super.dispose();
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
          // switch (state.runtimeType) {
          //   case MangaFetchingLoadingState:
          //     return SizedBox(
          //       height: DeviceUtils.getScreenHeight(context),
          //       child: const Center(
          //         child: CircularProgressIndicator(),
          //       ),
          //     );
          //   case MangaDetailsSuccessfulState:
          //     final successState = state! as MangaDetailsSuccessfulState;
          //     final tabsLength = (successState.manga.results.chapters!.length / 50).ceil();
          //     return DefaultTabController(
          //       length: tabsLength,
          //       child: NestedScrollView(
          //         headerSliverBuilder: (_, innerBoxIsScrolled) {
          //           return [
          //             SliverToBoxAdapter(
          //               child: ListView(
          //                 shrinkWrap: true,
          //                 physics: const NeverScrollableScrollPhysics(),
          //                 children: [
          //                   CachedNetworkImage(
          //                     imageUrl: successState.manga.results.img1!,
          //                     height: 160,
          //                     width: double.infinity,
          //                     fit: BoxFit.cover,
          //                   ),
          //                   ListTile(
          //                     title: Text(
          //                       successState.manga.results.title,
          //                       style: const TextStyle(fontWeight: FontWeight.w600),
          //                     ),
          //                     subtitle: Text(
          //                       successState.manga.results.author,
          //                       style: Theme.of(context).textTheme.labelMedium,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             SliverAppBar(
          //               automaticallyImplyLeading: false,
          //               pinned: true,
          //               floating: true,
          //               toolbarHeight: 0,
          //               backgroundColor: Colors.black,
          //               forceElevated: innerBoxIsScrolled,
          //               bottom: PreferredSize(
          //                 preferredSize: const Size.fromHeight(78),
          //                 child: Column(
          //                   children: [
          //                     Container(
          //                       color: Colors.grey.shade900,
          //                       width: double.infinity,
          //                       padding: const EdgeInsets.symmetric(horizontal: Sizes.md, vertical: Sizes.sm),
          //                       child: Text(
          //                         'Chapters',
          //                         style: Theme.of(context).textTheme.titleSmall,
          //                       ),
          //                     ),
          //                     TabBar(
          //                       isScrollable: true,
          //                       indicatorColor: Theme.of(context).primaryColor,
          //                       indicatorSize: TabBarIndicatorSize.tab,
          //                       tabAlignment: TabAlignment.start,
          //                       tabs: [
          //                         ...List.generate(tabsLength, (index) {
          //                           final first = index * 50 + 1;
          //                           final last = (index + 1) * 50;
          //                           return Tab(
          //                             height: 40,
          //                             child: Text(
          //                               '$first - $last',
          //                               style: Theme.of(context).textTheme.titleSmall,
          //                             ),
          //                           );
          //                         }),
          //                       ],
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //           ];
          //         },
          //         body: TabBarView(
          //           children: [
          //             ...List.generate(tabsLength, (index) {
          //               final first = index * 50;
          //               final last = (index + 1) * 50 > successState.manga.results.chapters!.length
          //                   ? successState.manga.results.chapters!.length
          //                   : (index + 1) * 50;
          //               final itemCount = last - first;
          //               return Padding(
          //                 padding: const EdgeInsets.symmetric(horizontal: Sizes.xs),
          //                 child: ListView.builder(
          //                   physics: const NeverScrollableScrollPhysics(),
          //                   itemCount: itemCount,
          //                   itemBuilder: (context, index) {
          //                     return SizedBox(
          //                       width: double.infinity,
          //                       child: TextButton(
          //                         style: TextButton.styleFrom(alignment: Alignment.centerLeft),
          //                         onPressed: () {
          //                           // _pageBloc.add(
          //                           //   MangaGetChapterPagesEvent(
          //                           //       id: successState.manga.results.chapters!.sublist(first, last)[index].id!),
          //                           // );
          //                           showMaterialModalBottomSheet(
          //                             expand: true,
          //                             context: context,
          //                             backgroundColor: Colors.black,
          //                             builder: (context) => ReadingModal(
          //                               id: successState.manga.results.chapters!.sublist(first, last)[index].id!,
          //                               indexChapter: index + first,
          //                               chapters: successState.manga.results.chapters!,
          //                               totalChapters: successState.manga.results.chapters!.length,
          //                             ),
          //                           );
          //                         },
          //                         child: Text(
          //                           successState.manga.results.chapters!.sublist(first, last)[index].title!,
          //                           style: Theme.of(context).textTheme.bodyMedium,
          //                         ),
          //                       ),
          //                     );
          //                   },
          //                 ),
          //               );
          //             }),
          //           ],
          //         ),
          //       ),
          //     );
          // }

          return SizedBox(
            height: DeviceUtils.getScreenHeight(context) * 0.3,
            child: const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}

class FloatingModal extends StatelessWidget {
  const FloatingModal({required this.child, super.key, this.backgroundColor});
  final Widget child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Material(
          color: backgroundColor,
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(8),
          child: child,
        ),
      ),
    );
  }
}
