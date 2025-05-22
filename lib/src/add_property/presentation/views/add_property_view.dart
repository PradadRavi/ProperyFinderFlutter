import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/sliver_app_bar_custom.dart';
import 'package:propertyfinder/core/res/app_colors.dart';

class AddPropertyView extends StatelessWidget {
  const AddPropertyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: CustomSliverHeaderDelegate(
              expandedHeight: 220,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 40,
              (context, index) {
                return Text("SliverList $index");
              },
            ),
          )
        ],
      ),
    );
  }
}

class MyPropertiesScreen extends StatelessWidget {
  const MyPropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: CustomSliverHeaderDelegate(
              expandedHeight: 380,
            ),
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text(
                  "Property #$index",
                ),
              ),
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  CustomSliverHeaderDelegate({required this.expandedHeight});
  int selectIndex = 0;
  final double expandedHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final bool isCollapsed = shrinkOffset > expandedHeight - kToolbarHeight;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.only(
        top: 50,
        left: 16,
        right: 16,
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Icon(
                  Icons.keyboard_arrow_left,
                  size: 28,
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.primaryColor,
                  shape: StadiumBorder(),
                ),
                child: Text(
                  "+ Add Property",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "My Properties",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            // style: Theme.of(context).textTheme.headline6?.copyWith(
            //       color: Colors.white,
            //       fontWeight: FontWeight.bold,
            //     ),
          ),
          const SizedBox(height: 10),
          StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Row(
              spacing: 14,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      selectIndex = 0;
                    });
                  },
                  child: _buildToggleButton(
                    "Rent Property",
                    selectIndex == 0,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectIndex = 1;
                    });
                  },
                  child: _buildToggleButton(
                    "Sell Property",
                    selectIndex == 1,
                  ),
                ),
              ],
            );
          })
        ],
      ),
    );
  }

  Widget _buildToggleButton(String text, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? AppColors.primaryColor : Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 40;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
