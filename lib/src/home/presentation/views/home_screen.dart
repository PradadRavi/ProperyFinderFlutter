import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/feature_of_property_list.dart';
import 'package:propertyfinder/core/res/app_colors.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';
import 'package:propertyfinder/src/home/presentation/widgets/my_property_widget.dart';
import 'package:propertyfinder/src/home/presentation/widgets/recent_property_widget.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.borderGreyColor,
      appBar: AppBar(
        backgroundColor: AppColors.borderGreyColor,
        actions: [
          Container(
            child: Row(
              children: [
                Icon(Icons.add),
                Text(AppStrings.addProperty),
              ],
            ),
          ),
          Stack(
            children: [
              Icon(Icons.notifications),
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: double.infinity,
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8),
              itemCount: FeatureOfPropertyList.list.length,
              itemBuilder: (context, index) {
                return FeatureOfPropertyList.list[index];
              }),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Property",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("View all"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 320,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: MyPropertyWidget(),
                  );
                }),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.green,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent  Property",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("View all"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 320,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: RecentPropertyWidget(),
                  );
                }),
          ),
          // Container(
          //   height: 200,
          //   child: StackedCardCarousel(
          //     items: List.generate(
          //         4,
          // (index) => Container(
          //       height: 200,
          //       width: 200,
          //       decoration: BoxDecoration(color: Colors.green),
          //       child: Text("first$index"),
          //     )),
          //   ),
          // )
        ],
      ),
    );
  }
}

class SwipeStackLoop extends StatefulWidget {
  @override
  _SwipeStackLoopState createState() => _SwipeStackLoopState();
}

class _SwipeStackLoopState extends State<SwipeStackLoop>
    with TickerProviderStateMixin {
  final List<String> images = [
    'https://via.placeholder.com/300x200/FF0000?text=1',
    'https://via.placeholder.com/300x200/00FF00?text=2',
    'https://via.placeholder.com/300x200/0000FF?text=3',
    'https://via.placeholder.com/300x200/FFFF00?text=4',
    'https://via.placeholder.com/300x200/00FFFF?text=5',
  ];

  int currentIndex = 0;
  bool isAnimating = false;
  Offset dragOffset = Offset.zero;
  late AnimationController controller;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(milliseconds: 300), vsync: this);
  }

  void onPanUpdate(DragUpdateDetails details) {
    if (isAnimating) return;
    setState(() {
      dragOffset += details.delta;
    });
  }

  void onPanEnd(DragEndDetails details) {
    if (isAnimating) return;

    if (dragOffset.dx > 100) {
      // Swipe right (show next)
      animateSwipe(isRight: true);
    } else if (dragOffset.dx < -100) {
      // Swipe left (show previous)
      animateSwipe(isRight: false);
    } else {
      // Cancel swipe
      setState(() => dragOffset = Offset.zero);
    }
  }

  void animateSwipe({required bool isRight}) {
    isAnimating = true;
    final endOffset = isRight ? Offset(500, 0) : Offset(-500, 0);
    animation = Tween<Offset>(begin: dragOffset, end: endOffset)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));

    controller.forward(from: 0).then((_) {
      setState(() {
        if (isRight) {
          currentIndex = (currentIndex + 1) % images.length;
        } else {
          currentIndex = (currentIndex - 1 + images.length) % images.length;
        }
        dragOffset = Offset.zero;
        isAnimating = false;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget _buildCard(String url, bool isTop) {
    return GestureDetector(
      onPanUpdate: isTop ? onPanUpdate : null,
      onPanEnd: isTop ? onPanEnd : null,
      child: AnimatedBuilder(
        animation: controller,
        builder: (_, child) {
          final offset = isTop && isAnimating
              ? animation.value
              : (isTop ? dragOffset : Offset.zero);
          return Transform.translate(offset: offset, child: child);
        },
        child: Container(
          width: 300,
          height: 200,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
          ),
          child: Text("$url"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> stack = [];

    for (int i = 0; i < 3; i++) {
      int index = (currentIndex + i) % images.length;
      stack.add(
        Positioned(
          top: i * 10.0,
          child: _buildCard(images[index], i == 0),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text('Swipe Stack Loop')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children:
              stack.reversed.toList(), // Make top image appear visually on top
        ),
      ),
    );
  }
}


// class StackSwipeImages extends StatefulWidget {
//   @override
//   _StackSwipeImagesState createState() => _StackSwipeImagesState();
// }

// class _StackSwipeImagesState extends State<StackSwipeImages> {
//   List<String> images = [
//     'https://via.placeholder.com/300x200/FF0000',
//     'https://via.placeholder.com/300x200/00FF00',
//     'https://via.placeholder.com/300x200/0000FF',
//     'https://via.placeholder.com/300x200/0000FF',
//     'https://via.placeholder.com/300x200/0000FF',
//     'https://via.placeholder.com/300x200/0000FF',
//   ];

//   Offset position = Offset.zero;

//   void _onPanUpdate(DragUpdateDetails details) {
//     setState(() {
//       position += details.delta;
//     });
//   }

//   void _onPanEnd(DragEndDetails details) {
//     if (position.dx.abs() > 100) {
//       setState(() {
//         images.removeAt(0);
//         position = Offset.zero;
//       });
//     } else {
//       setState(() {
//         position = Offset.zero;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Stack(
//           alignment: Alignment.center,
//           children: images
//               .asMap()
//               .entries
//               .map((entry) {
//                 int index = entry.key;
//                 String image = entry.value;

//                 // Only animate the top image
//                 if (index == 0) {
//                   return Positioned(
//                     child: GestureDetector(
//                       onPanUpdate: _onPanUpdate,
//                       onPanEnd: _onPanEnd,
//                       child: Transform.translate(
//                         offset: position,
//                         child: _buildCard(image, index),
//                       ),
//                     ),
//                   );
//                 }

//                 // Apply a slight scaling and vertical offset to the background cards
//                 return Positioned(
//                   top: 10.0 * index,
//                   child: _buildCard(image, index),
//                 );
//               })
//               .toList()
//               .reversed
//               .toList(), // So the first image is on top
//         ),
//       ),
//     );
//   }

//   Widget _buildCard(String image, int index) {
//     return Container(
//       width: 300,
//       height: 200,
      // decoration: BoxDecoration(
      //   color: index == 0
      //       ? Colors.green
      //       : index == 1
      //           ? Colors.red
      //           : index == 2
      //               ? Colors.amber
      //               : index == 3
      //                   ? Colors.blue
      //                   : Colors.lightGreen,
      //   borderRadius: BorderRadius.circular(20),
      //   boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
      // ),
//     );
//   }
// }
