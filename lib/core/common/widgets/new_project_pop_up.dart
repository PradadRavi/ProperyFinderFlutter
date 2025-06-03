import 'package:flutter/material.dart';
import 'package:propertyfinder/core/extensions/context_extensions.dart';
import 'package:propertyfinder/core/res/app_colors.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';
import 'package:propertyfinder/core/utils/assets_path.dart';

// class NewProjectPopUp extends StatelessWidget {
//   const NewProjectPopUp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//         child: Material(
//       color: Colors.transparent,
//       child: Column(
//         children: [
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
// Text(
//   AppStrings.newProject,
//   style: context.bodyLarge,
// ),
//             ],
//           ),
//         ],
//       ),
//     )

//         // Column(
//         //   mainAxisSize: MainAxisSize.min,
//         //   mainAxisAlignment: MainAxisAlignment.start,
//         //   crossAxisAlignment: CrossAxisAlignment.start,
//         //   children: [
//         // Text(
//         //   AppStrings.newProject,
//         //   style: context.bodyLarge,
//         // ),
//     AspectRatio(
//       aspectRatio: 0.6,
//       child: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(
//               AssetsPath.new_project_pop_up_imageJpg,
//             ),
//           ),
//         ),
//       ),
//     ),
//         //   ],
//         // ),
//         );
//   }
// }

void showFullScreenDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    // barrierDismissible: false, // Set to true if you want to dismiss by tapping outside
    // The barrier color for the dialog's modal barrier.
    barrierColor: Colors.black.withOpacity(0.5),
    // The duration of the transition from the screen to the dialog.
    transitionDuration:
        const Duration(milliseconds: 300), // Adjust for desired animation speed
    // The builder function that returns the dialog's content.
    pageBuilder: (BuildContext buildContext, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      // Return a Scaffold that takes up the full screen.
      return Column(
        children: [
          Material(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.newProject,
                style: context.bodyLarge,
              ),
              Container(
                height: 200,
                width: double.infinity - 60,
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AssetsPath.new_project_pop_up_imageJpg,
                    ),
                  ),
                ),
              ),
              Text(
                "Beautiful 3BHK Home for Rent",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Near Gita Industory, Bypass Road, Jasdan, Rajkot",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Text(
                "${AppStrings.rupeeSymbol}45 Lac - ${AppStrings.rupeeSymbol}60 Lac",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              ElevatedButton(
                onPressed: () {
                  // You can perform actions here and then close the dialog
                  Navigator.of(context).pop();
                },
                // Added style to make the Elevated Button have an outline border
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  side: const BorderSide(
                      color: AppColors.primaryColor,
                      width: 1.2), // Define the border color and width
                ),
                child: const Text(
                  'View More Details',
                  style: TextStyle(fontSize: 14, color: AppColors.primaryColor),
                ),
              ),
            ],
          )),
          Material(
            child: Container(),
          )
        ],
      );

      //  Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Full-Screen Dialog'),
      //     leading: IconButton(
      //       icon: const Icon(Icons.close),
      //       onPressed: () {
      //         // Close the dialog when the close button is pressed
      //         Navigator.of(context).pop();
      //       },
      //     ),
      //   ),
      //   body: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         const Text(
      //           'This is a full-screen dialog!',
      //           style: TextStyle(fontSize: 24),
      //         ),
      //         const SizedBox(height: 20),
      //         ElevatedButton(
      //           onPressed: () {
      //             // You can perform actions here and then close the dialog
      //             Navigator.of(context).pop();
      //           },
      //           child: const Text('Close Dialog'),
      //         ),
      //       ],
      //     ),
      //   ),
      // );
    },
  );
}
