import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:reco/bloc/manga_bloc/manga_bloc.dart';
import 'package:reco/utils/constants/sizes.dart';
import 'package:reco/utils/device/device_utility.dart';

enum SegmentType { horizontal, vertical }

class ReadingModal extends StatefulWidget {
  const ReadingModal({required this.id, required this.title, required this.bloc, super.key, this.state});
  final MangaBloc bloc;
  final String id;
  final String title;
  final Object? state;

  @override
  _ReadingModalState createState() => _ReadingModalState();
}

class _ReadingModalState extends State<ReadingModal> {
  late SegmentType readingDirection = SegmentType.vertical;
  final ScrollController _controller = ScrollController();
  final ScrollController _controller1 = ScrollController();
  late Object? data;
  bool _isVisible = true;
  int _currentIndex = 0;
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
    data = widget.state;
    _controller.addListener(_listen);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_listen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        switch (data.runtimeType) {
          case MangaFetchingLoadingState:
            return SizedBox(
              height: DeviceUtils.getScreenHeight(context),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          case MangaGetChapterPagesSuccessfulState:
            log(data.runtimeType.toString());
            final pageState = data! as MangaGetChapterPagesSuccessfulState;
            return Scaffold(
              bottomNavigationBar: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                height: _isVisible ? 60 : 0,
                child: BottomAppBar(
                  child: Stack(
                    children: [
                      // SizedBox.expand(
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Text(
                      //         '${_currentIndex + 1} / ${pageState.pages.results.length}',
                      //         style: const TextStyle(fontWeight: FontWeight.w600),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      IconButton(
                        icon: const Icon(Icons.comment),
                        onPressed: () {},
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
                        widget.title,
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
                body: ListView.builder(
                  controller: _controller1,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onPanDown: (details) {
                        if (_controller1.offset >= _controller1.position.maxScrollExtent) {
                          // widget.bloc.add(
                          //   MangaGetChapterPagesEvent(id: 'chapter-2'),
                          // );
                        }
                      },
                      // onPanUpdate: (details) {
                      //   if (details.delta.dy < 0) {
                      //     log('Swiping up the element $index');
                      //   }
                      //   // Catch the swipe down action.
                      //   if (details.delta.dy > 0) {
                      //     log('Swiping down the element $index');
                      //   }
                      // },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4),
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
                      ),
                    );
                  },
                  itemCount: pageState.pages.results.length,
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
