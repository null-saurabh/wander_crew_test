// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:wander_crew/pages/client/menu_screen/widgets/single_product.dart';
// import 'package:wander_crew/pages/client/menu_screen/widgets/veg_filter.dart';
// import 'package:wander_crew/widgets/widget_support.dart';
// import '../menu_screen_controller.dart';
//
// class ExpandableMenuItem extends StatelessWidget {
//   const ExpandableMenuItem({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<MenuScreenController>(
//         init: MenuScreenController(),
//         builder:(controller) {
//           return Padding(
//             padding: const EdgeInsets.only(right: 8.0),
//             child: Container(
//
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//
//               child: Obx(() {
//                 if (controller.filteredMenuByCategory.isNotEmpty) {
//                   return Column(
//                     children: [
//                       const VegFilterMenu(),
//                       const SizedBox(height: 12),
//                       Expanded(
//                         child: ListView(
//                           controller: controller.listViewScrollController,
//                           shrinkWrap: true, // Allow the ListView to take only the necessary height
//                           children: controller.filteredMenuByCategory.entries
//                               .where((entry) => entry.value.isNotEmpty) // Filter out empty categories
//                               .map((entry) {
//
//                             int index = controller.filteredMenuByCategory.keys.toList().indexOf(entry.key);
//
//
//                             // Get the available times for the current category
//                             List<Map<String, String>> availableTimes = controller.getAvailableTimesForCategory(entry.key);
//                             availableTimes.sort((a, b) => a['start']!.compareTo(b['start']!));
//
//                             // Get current time
//                             DateTime now = DateTime.now();
//
//                             // Find the next available time
//                             String nextAvailableTime = controller.getNextAvailableTime(availableTimes, now);
//
//                             // print(entry.key);
//                             // Check if the category is available based on the current time
//                             bool isCategoryAvailable = availableTimes.any((timeRange) => controller.isCategoryAvailable(timeRange));
//
//                             controller.expandedCategories[index] = controller.expandedCategories[index] ?? availableTimes.any((timeRange) => controller.isCategoryAvailable(timeRange));
//
//
//                             return Column(
//                               key: controller.sectionKeys[index],
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     controller.toggleCategoryExpansion(index);
//                                   },
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
//                                       border: const Border(bottom: BorderSide.none,),
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: Colors.grey.withOpacity(0.2),
//                                           spreadRadius: 1,
//                                           blurRadius: 5,
//                                         ),
//                                       ],
//                                     ),
//                                     padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
//                                     child: Container(
//                                       height: 52,
//                                       // width: double.infinity,
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius:BorderRadius.circular(12),
//                                         border: Border.all(color: Colors.grey.withOpacity(0.4)),
//                                       ),
//                                       child: Row(
//                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Container(
//                                             width: 10,
//                                             decoration: const BoxDecoration(
//                                               color: Color(0xffEDCC23), // Yellow left border
//                                               borderRadius: BorderRadius.only(
//                                                 topLeft: Radius.circular(12), // Match outer corner radius
//                                                 bottomLeft: Radius.circular(12), // Match outer corner radius
//                                               ),
//                                             ),
//                                           ),
//                                           Row(
//                                             children: [
//                                               Text(
//                                                 entry.key,
//                                                 style: !isCategoryAvailable ? AppWidget.grey24Bold500():AppWidget.heading24Bold500TextStyle(),
//                                               ),
//                                               if (!isCategoryAvailable)
//                                                 Text(
//                                                   " (Available at $nextAvailableTime)",
//                                                   style: TextStyle(
//                                                     fontSize: 16,
//                                                     color: Colors.grey,
//                                                     fontStyle: FontStyle.italic,
//                                                   ),
//                                                 ),
//                                             ],
//                                           ),
//
//
//                                           Icon(
//                                             controller.expandedCategories[index]!
//                                                 ? Icons.arrow_drop_down
//                                                 : Icons.arrow_drop_up,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 if (controller.expandedCategories[index]!) ...[ // Show items only if expanded
//                                   Padding(
//                                     padding: const EdgeInsets.only(bottom: 0.0),
//                                     child: Container(
//                                       decoration: const BoxDecoration(
//                                         color: Colors.white,
//                                       ),
//                                       padding: const EdgeInsets.all(8),
//                                       child: Column(
//                                         children: entry.value.map((menuItem) {
//                                           return SingleProduct(menuItem: menuItem,isDisabled: !isCategoryAvailable,);
//                                         }).toList(),
//                                       ),
//                                     ),
//                                   ),]
//                               ],
//                             );
//                           }).toList(),
//                         ),
//                       ),
//                     ],
//                   );
//                 }
//                 else if (controller.isLoading.value) {
//                   return const Center(child: CircularProgressIndicator());
//                 }
//                 else {
//                   return const Center(child: Text('No Item Found! Contact Admin'));
//                 }
//               }),
//
//             ),
//           );
//         }
//     );
//   }
// }
