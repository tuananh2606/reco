import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reco/common/widgets/card/card_item.dart';
import 'package:reco/common/widgets/carousel/carousel_slider.dart';
import 'package:reco/common/widgets/layout/grid_layout.dart';
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
  int _currentIndex = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
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
              backgroundColor: Colors.grey.shade900.withOpacity(0.5),
              expandedHeight: 58,
              flexibleSpace: GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(Sizes.sm),
                  child: Container(
                    height: 40,
                    width: DeviceUtils.getScreenWidth(context),
                    decoration: BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.circular(Sizes.borderRadiusMd),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: Sizes.spaceBtwItems / 2),
                      child: Row(
                        children: [
                          const Icon(LineIcons.search),
                          const SizedBox(
                            width: Sizes.spaceBtwItems / 2,
                          ),
                          Text(
                            'Search by title or author',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            SingleChildScrollView(
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
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Image.network(
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(Sizes.sm),
                    child: GridLayout(itemCount: 21, mainAxisExtent: 190, itemBuilder: (_, index) => const CardItem()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
