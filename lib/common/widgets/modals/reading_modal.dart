import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:exprollable_page_view/exprollable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:reco/bloc/manga_bloc/data/models/manga_model.dart';
import 'package:reco/bloc/manga_bloc/manga_bloc.dart';
import 'package:reco/utils/constants/sizes.dart';
import 'package:reco/utils/device/device_utility.dart';

enum SegmentType { horizontal, vertical }

class ReadingModal extends StatefulWidget {
  const ReadingModal({
    required this.id,
    required this.totalChapters,
    required this.indexChapter,
    required this.chapters,
    super.key,
  });
  final String id;
  final int totalChapters;
  final int indexChapter;
  final List<Chapter> chapters;

  @override
  _ReadingModalState createState() => _ReadingModalState();
}

class _ReadingModalState extends State<ReadingModal> {
  final MangaBloc _pageBloc = MangaBloc();
  late SegmentType readingDirection = SegmentType.vertical;
  final ScrollController _controller = ScrollController();
  final ScrollController _controller1 = ScrollController(keepScrollOffset: false);
  late Object? data;
  late final ExprollablePageController _controllerPageView;
  late num? numChapter;
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

  void _previousChapter() {
    _pageBloc.add(MangaGetChapterPagesEvent(id: widget.chapters[widget.indexChapter - 1].id!));
    setState(() {
      numChapter = numChapter! - 1;
    });
  }

  void _nextChapter() {
    _pageBloc.add(MangaGetChapterPagesEvent(id: widget.chapters[widget.indexChapter + 1].id!));
    setState(() {
      numChapter = numChapter! + 1;
    });
  }

  @override
  void initState() {
    const fullscreenInset = ViewportInset.fixed(0);
    _controllerPageView = ExprollablePageController(
        // viewportConfiguration: const ViewportConfiguration.raw(
        //   minFraction: 1,
        //   max
        //   minInset: fullscreenInset,
        //   snapInsets: [
        //     fullscreenInset,
        //   ],
        // ),
        );
    _pageBloc.add(MangaGetChapterPagesEvent(id: widget.id));
    numChapter = widget.indexChapter;
    _controller.addListener(_listen);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_listen);
    super.dispose();
  }

  bool get _isBottom {
    if (!_controller1.hasClients) return false;
    final maxScroll = _controller1.position.maxScrollExtent;
    final currentScroll = _controller1.offset;
    return currentScroll >= maxScroll;
  }

  @override
  Widget build(BuildContext context) {
    final index = widget.indexChapter;
    log(widget.chapters[index].toString());
    return BlocBuilder(
      buildWhen: (previous, current) {
        return previous != current && current is MangaGetChapterPagesSuccessfulState;
      },
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
            return Scaffold(
              bottomNavigationBar: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                height: _isVisible ? 60 : 0,
                child: BottomAppBar(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.comment),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: numChapter! > 0 ? _previousChapter : null,
                            child: Icon(
                              CupertinoIcons.arrowtriangle_left_fill,
                              color: numChapter! > 0 ? Colors.white : Colors.grey.shade400,
                            ),
                          ),
                          const SizedBox(
                            width: Sizes.lg,
                          ),
                          GestureDetector(
                            onTap: numChapter! < widget.totalChapters - 1 ? _nextChapter : null,
                            child: Icon(
                              CupertinoIcons.arrowtriangle_right_fill,
                              color: numChapter! < widget.totalChapters - 1 ? Colors.white : Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              body: NestedScrollView(
                controller: _controller,
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      floating: true,
                      snap: true,
                      centerTitle: true,
                      // forceElevated: innerBoxIsScrolled,
                      leading: IconButton(
                        icon: const Icon(LineIcons.times),
                        onPressed: () => context.pop(),
                      ),
                      backgroundColor: Colors.grey.shade900.withOpacity(0.9),
                      title: Text(
                        widget.chapters[numChapter! as int].title!,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      actions: [
                        IconButton(
                          onPressed: () {
                            showCustomModalBottomSheet(
                              context: context,
                              containerWidget: (_, animation, child) => FloatingModal(
                                backgroundColor: Colors.transparent,
                                child: child,
                              ),
                              builder: (context) {
                                return Container(
                                  color: Colors.transparent,
                                  height: DeviceUtils.getScreenHeight(context) * 0.2,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade900,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          padding: const EdgeInsets.all(Sizes.sm),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Reading Direction',
                                                style: Theme.of(context).textTheme.titleSmall,
                                              ),
                                              const SizedBox(
                                                height: Sizes.sm,
                                              ),
                                              CustomSlidingSegmentedControl<SegmentType>(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade800,
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                thumbDecoration: BoxDecoration(
                                                  color: Colors.grey.shade700,
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                initialValue: readingDirection,
                                                height: 24,
                                                isStretch: true,
                                                children: const {
                                                  SegmentType.horizontal: Text(
                                                    'Horizontal',
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SegmentType.vertical: Text(
                                                    'Vertical',
                                                    textAlign: TextAlign.center,
                                                  ),
                                                },
                                                onValueChanged: (value) {
                                                  setState(() {
                                                    readingDirection = value;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.grey.shade900,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                          onPressed: () => context.pop(),
                                          child: Text(
                                            'DONE',
                                            style: TextStyle(
                                              color: Colors.blue.shade700,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          icon: const Icon(LineIcons.cog),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 16),
                          child: IconButton(
                            icon: const Icon(CupertinoIcons.list_bullet),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ];
                },
                body: readingDirection == SegmentType.vertical
                    ? ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        controller: _controller1,
                        shrinkWrap: true,
                        scrollDirection: readingDirection == SegmentType.vertical ? Axis.vertical : Axis.horizontal,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onPanDown: (details) {
                              if (_isBottom) {
                                _nextChapter();
                              }
                            },
                            child: CachedNetworkImage(
                              httpHeaders: const {
                                'Referer': 'https://manganato.com/',
                              },
                              placeholder: (context, url) => LoadingAnimationWidget.halfTriangleDot(
                                color: Colors.grey,
                                size: 40,
                              ),
                              imageUrl: pageState.pages.results[index],
                            ),
                          );
                        },
                        itemCount: pageState.pages.results.length,
                      )
                    : ExprollablePageView(
                        controller: _controllerPageView,
                        itemCount: 5,
                        itemBuilder: (context, page) {
                          return ListView.builder(
                            controller: PageContentScrollController.of(context),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return CachedNetworkImage(
                                httpHeaders: const {
                                  'Referer': 'https://manganato.com/',
                                },
                                placeholder: (context, url) => LoadingAnimationWidget.halfTriangleDot(
                                  color: Colors.grey,
                                  size: 40,
                                ),
                                imageUrl: pageState.pages.results[index],
                              );
                            },
                          );
                        },
                      ),
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
