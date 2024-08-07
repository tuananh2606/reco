import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:reco/bloc/manga_bloc/detail_bloc/manga_detail_bloc.dart';
import 'package:reco/common/widgets/modals/reading_modal.dart';
import 'package:reco/data/database/reco_database.dart';
import 'package:reco/data/models/favourite/favourite_model.dart';
import 'package:reco/utils/constants/sizes.dart';
import 'package:reco/utils/device/device_utility.dart';

enum SegmentType { horizontal, vertical }

class DetailScreen extends StatefulWidget {
  const DetailScreen({required this.id, super.key});
  final String id;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final RecoDatabase db = RecoDatabase.instance;
  bool isFavouriteItem = false;
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
    _loadData();
    context.read<MangaDetailBloc>().add(MangaDetailEvent.getDetailManga(widget.id));
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_listen);
    super.dispose();
  }

  _loadData() async {
    final item = await db.getFavouriteItem(widget.id);
    if (item?.objectId != null) {
      setState(() {
        isFavouriteItem = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(DeviceUtils.getAppBarHeight()),
        child: BlocBuilder<MangaDetailBloc, MangaDetailState>(
          builder: (context, state) {
            final id = widget.id;
            final title = state.response?.results.title;
            final image = state.response?.results.img ?? state.response?.results.img1;

            final newFavouriteItem = FavouriteModel(objectId: id, title: title, image: image);

            return AppBar(
              actions: [
                IconButton(
                    icon: isFavouriteItem ? const Icon(LineIcons.starAlt) : const Icon(LineIcons.star),
                    onPressed: () {
                      if (isFavouriteItem) {
                        db.deleteFavouriteItem(id);
                        setState(() {
                          isFavouriteItem = false;
                        });
                      } else {
                        db.insertFavouriteItem(newFavouriteItem);
                        setState(() {
                          isFavouriteItem = true;
                        });
                      }
                    }),
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
            );
          },
        ),
      ),
      body: BlocBuilder<MangaDetailBloc, MangaDetailState>(
        builder: (context, state) {
          switch (state.status) {
            case MangaDetailStatus.initial:
              return SizedBox(
                height: DeviceUtils.getScreenHeight(context),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            case MangaDetailStatus.loading:
              return SizedBox(
                height: DeviceUtils.getScreenHeight(context),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            case MangaDetailStatus.success:
              final tabsLength = (state.response!.results.chapters!.length / 50).ceil();
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
                              imageUrl: state.response!.results.img1!,
                              height: 160,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            ListTile(
                              title: Text(
                                state.response!.results.title,
                                style: const TextStyle(fontWeight: FontWeight.w600),
                              ),
                              subtitle: Text(
                                state.response!.results.author,
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
                        final last = (index + 1) * 50 > state.response!.results.chapters!.length
                            ? state.response!.results.chapters!.length
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
                                    showMaterialModalBottomSheet(
                                      expand: true,
                                      context: context,
                                      backgroundColor: Colors.black,
                                      builder: (context) => ReadingModal(
                                        id: state.response!.results.chapters!.sublist(first, last)[index].id!,
                                        indexChapter: index + first,
                                        chapters: state.response!.results.chapters!,
                                        totalChapters: state.response!.results.chapters!.length,
                                      ),
                                    );
                                  },
                                  child: Text(
                                    state.response!.results.chapters!.sublist(first, last)[index].title!,
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
            case MangaDetailStatus.error:
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
