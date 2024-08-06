import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reco/bloc/manga_bloc/manga_bloc.dart';
import 'package:reco/common/widgets/card/horizontal_card_item.dart';
import 'package:reco/common/widgets/chip/chip.dart';
import 'package:reco/common/widgets/tabbar/tabbar.dart';
import 'package:reco/utils/constants/sizes.dart';
import 'package:reco/utils/device/device_utility.dart';

class HotScreen extends StatefulWidget {
  const HotScreen({super.key});
  @override
  State<HotScreen> createState() => _HotScreenState();
}

class _HotScreenState extends State<HotScreen> with SingleTickerProviderStateMixin {
  static const List<Widget> tabs = <Tab>[
    Tab(text: 'Hottest'),
    Tab(text: 'Newest'),
    Tab(text: 'Completed'),
  ];
  final MangaBloc _mangaBloc = MangaBloc();
  late MangaBloc _mangaNewestBloc = MangaBloc();

  late TabController _tabController;
  late ScrollController _scrollViewController;
  @override
  void initState() {
    _mangaBloc.add(const MangaEvent.fetchManga('hottest', '1'));
    _mangaNewestBloc.add(const MangaEvent.fetchManga('newest', '1'));
    _tabController = TabController(vsync: this, length: tabs.length);
    _scrollViewController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  Future<void> _refresh() async {
    context.read<MangaBloc>().add(const MangaEvent.fetchManga('hottest', '1'));
    context.read<MangaBloc>().add(const MangaEvent.fetchManga('newest', '1'));
  }

  @override
  Widget build(BuildContext context) {
    final checkboxTitle = <String>[
      'English',
      'Tiếng Việt',
      'Bahasa Indonesia',
      'Deutsch',
      'Tiếng Việt',
      'Bahasa Indonesia',
      'Deutsch',
    ];

    return DefaultTabController(
      length: tabs.length,
      child: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        controller: _scrollViewController,
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: Image.network(
                      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwItems,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Sizes.md),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ranking',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(
                          height: Sizes.spaceBtwItems,
                        ),
                        GestureDetector(
                          onTap: () => showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => SizedBox(
                              height: DeviceUtils.getScreenHeight(context) * 0.8,
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(Sizes.sm),
                                    decoration: BoxDecoration(
                                      color: Colors.red.shade700,
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(Sizes.borderRadiusXl),
                                        topRight: Radius.circular(Sizes.borderRadiusXl),
                                      ),
                                    ),
                                    child: const Text(
                                      'Languages',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const CheckBoxLanguage(
                                    title: 'Select all languages',
                                  ),
                                  const Divider(
                                    height: 0,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: checkboxTitle.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return CheckBoxLanguage(
                                        title: checkboxTitle[index],
                                      );
                                    },
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(Sizes.sm), // <-- Radius
                                                ),
                                                foregroundColor: Colors.white,
                                                backgroundColor: Colors.red.shade700,
                                              ),
                                              child: const Text('Done'),
                                            ),
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: TextButton(
                                              onPressed: () => Navigator.of(context).pop(),
                                              style: TextButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(Sizes.sm), // <-- Radius
                                                ),
                                                foregroundColor: Colors.white,
                                              ),
                                              child: const Text('Cancel'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Text('View by Language'),
                              SizedBox(width: 8),
                              Icon(
                                LineIcons.angleDown,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: Sizes.spaceBtwItems / 2,
                        ),
                        const LChip(),
                      ],
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
              bottom: const RTabBar(tabs: tabs),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              BlocBuilder<MangaBloc, MangaState>(
                bloc: _mangaBloc,
                builder: (context, state) {
                  switch (state.status) {
                    case MangaStatus.initial:
                      return SizedBox(
                        height: DeviceUtils.getScreenHeight(context),
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    case MangaStatus.loading:
                      return SizedBox(
                        height: DeviceUtils.getScreenHeight(context),
                        child: const Center(child: CircularProgressIndicator()),
                      );
                    case MangaStatus.success:
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.mangas.results.length,
                        itemBuilder: (context, index) {
                          return HorizontalCardItem(
                            index: index + 1,
                            manga: state.mangas.results[index],
                          );
                        },
                      );
                    case MangaStatus.error:
                  }
                  return SizedBox(
                    height: DeviceUtils.getScreenHeight(context),
                    child: const Center(child: CircularProgressIndicator()),
                  );
                },
              ),
              BlocBuilder<MangaBloc, MangaState>(
                bloc: _mangaNewestBloc,
                builder: (context, state) {
                  switch (state.status) {
                    case MangaStatus.initial:
                      return SizedBox(
                        height: DeviceUtils.getScreenHeight(context),
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    case MangaStatus.loading:
                      return SizedBox(
                        height: DeviceUtils.getScreenHeight(context),
                        child: const Center(child: CircularProgressIndicator()),
                      );
                    case MangaStatus.success:
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.mangas.results.length,
                        itemBuilder: (context, index) {
                          return HorizontalCardItem(
                            index: index + 1,
                            manga: state.mangas.results[index],
                          );
                        },
                      );
                    case MangaStatus.error:
                  }
                  return SizedBox(
                    height: DeviceUtils.getScreenHeight(context),
                    child: const Center(child: CircularProgressIndicator()),
                  );
                },
              ),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  // HorizontalCardItem(),
                  // HorizontalCardItem(),
                  // HorizontalCardItem(),
                  // HorizontalCardItem(),
                  // HorizontalCardItem(),
                  // HorizontalCardItem(),
                  // HorizontalCardItem(),
                  // HorizontalCardItem(),
                  // HorizontalCardItem(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckBoxLanguage extends StatelessWidget {
  const CheckBoxLanguage({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8, left: 8),
      child: Row(
        children: [
          Checkbox(
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            value: false,
            onChanged: (value) {},
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
