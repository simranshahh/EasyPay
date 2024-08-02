
//       appBar: AppBar(
//         backgroundColor: ColorConstant.primary,
//         // title: Text('DashBoard'),
//         leading: Builder(
//           builder: (context) {
//             return IconButton(
//               icon: const Icon(Icons.menu),
//               onPressed: () {
//                 Scaffold.of(context).openDrawer();
//               },
//             );
//           },
//         ),
//         actions: [
//           Row(
//             children: [
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.settings),
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.person),
//               ),
//             ],
//           ),
//         ],
//       ),
//       body: Center(
//         child: _widgetOptions[_selectedIndex],
//       ),
//       // floatingActionButton: Positioned(
//       //   left: 10,
//       //   child: FloatingActionButton(
//       //     onPressed: () {
//       //       Scaffold.of(context).openDrawer();
//       //     },
//       //     child: Icon(Icons.menu),
//       //   ),
//       // ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               decoration:
//                   BoxDecoration(color: ColorConstant.primary, boxShadow: [
//                 BoxShadow(
//                   color: ColorConstant.grey.withOpacity(0.5),
//                   spreadRadius: 2,
//                   blurRadius: 72,
//                   offset: Offset(0, 3), // changes position of shadow
//                 ),
//               ]),
//               child: Text(
//                 'Super User',
//                 style: TextStyle(
//                     color: ColorConstant.white,
//                     fontSize: 32,
//                     fontWeight: FontWeight.normal),
//               ),
//             ),
//             ExpansionTile(
//                 title: Text(
//                   'Hotel Management',
//                   style: TextStyle(
//                     fontFamily: 'Montserrat',
//                   ),
//                 ),
//                 children: [
//                   ListTile(
//                     title: Text(
//                       'Banners',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 0,
//                     onTap: () {
//                       Navigator.pushNamed(context, '/bannerpage');
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Categories ',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 0,
//                     onTap: () {
//                       Navigator.pushNamed(context, '/categorypage');
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Add Products',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 0,
//                     onTap: () {
//                       Navigator.pushNamed(context, '/addproductpage');
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Electronics ',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 0,
//                     onTap: () {
//                       Navigator.pushNamed(context, '/electronicspage');
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Furnitures',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 0,
//                     onTap: () {
//                       Navigator.pushNamed(context, '/furniturespage');
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Enquiriers ',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 0,
//                     onTap: () {
//                       _onItemTapped(0);
//                       Navigator.pop(context);
//                     },
//                   ),
//                 ]),
//             ExpansionTile(
//                 title: Text(
//                   'User Management',
//                   style: TextStyle(
//                     fontFamily: 'Montserrat',
//                   ),
//                 ),
//                 children: [
//                   ListTile(
//                     title: const Text(
//                       'Members',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 0,
//                     onTap: () {
//                       Navigator.pushNamed(context, '/memberpage');
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Employees ',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 0,
//                     onTap: () {
//                       Navigator.pushNamed(context, '/employeepage');
//                     },
//                   ),
//                 ]),
//             ExpansionTile(
//                 title: Text(
//                   'Master',
//                   style: TextStyle(
//                     fontFamily: 'Montserrat',
//                   ),
//                 ),
//                 children: [
//                   ListTile(
//                     title: const Text(
//                       'Roles',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 2,
//                     onTap: () {
//                       Navigator.pushNamed(context, '/rolespage');
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Employee Roles',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 2,
//                     onTap: () {
//                       Navigator.pushNamed(context, '/employeerolespage');
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Branches',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 2,
//                     onTap: () {
//                       Navigator.pushNamed(context, '/branchespage');
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Series',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 2,
//                     onTap: () {
//                       Navigator.pushNamed(context, '/seriespage');
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Mail SMS Service',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 2,
//                     onTap: () {
//                       Navigator.pushNamed(context, '/mailsmsservicepage');
//                     },
//                   ),
//                 ]),
//             ExpansionTile(
//                 title: Text(
//                   'Loan Plans',
//                   style: TextStyle(
//                     fontFamily: 'Montserrat',
//                   ),
//                 ),
//                 children: [
//                   ListTile(
//                     title: const Text('Emi Plans Of Customer'),
//                     selected: _selectedIndex == 3,
//                     onTap: () {
//                       _onItemTapped(3);
//                       Navigator.pop(context);
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Emi Colleccted Till Date',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 3,
//                     onTap: () {
//                       _onItemTapped(3);
//                       Navigator.pop(context);
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Loan Calculator',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 3,
//                     onTap: () {
//                       Navigator.pushNamed(context, '/loancalculatorpage');
//                     },
//                   ),
//                 ]),
//             ExpansionTile(
//                 title: Text(
//                   'Banking',
//                   style: TextStyle(
//                     fontFamily: 'Montserrat',
//                   ),
//                 ),
//                 children: [
//                   ListTile(
//                     title: const Text(
//                       'Deposit',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 4,
//                     onTap: () {
//                       _onItemTapped(4);
//                       Navigator.pop(context);
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Withdrawn',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 4,
//                     onTap: () {
//                       _onItemTapped(4);
//                       Navigator.pop(context);
//                     },
//                   ),
//                   ListTile(
//                     title: const Text(
//                       'Transaction',
//                       style: TextStyle(
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                     selected: _selectedIndex == 4,
//                     onTap: () {
//                       _onItemTapped(4);
//                       Navigator.pop(context);
//                     },
//                   ),
//                 ]),
//             ExpansionTile(
//                 title: Text(
//                   'Geo Tracker',
//                   style: TextStyle(
//                     fontFamily: 'Montserrat',
//                   ),
//                 ),
//                 children: [
//                   ListTile(
//                     title: const Text('Visit History'),
//                     selected: _selectedIndex == 5,
//                     onTap: () {
//                       _onItemTapped(5);
//                       Navigator.pop(context);
//                     },
//                   ),
//                 ]),
//             ExpansionTile(
//               title: Text(
//                 'Profile Settings',
//                 style: TextStyle(
//                   fontFamily: 'Montserrat',
//                 ),
//               ),
//               children: [
//                 ListTile(
//                   title: Text(
//                     'User Profile',
//                     style: TextStyle(
//                       fontFamily: 'Montserrat',
//                     ),
//                   ),
//                   selected: _selectedIndex == 7,
//                   onTap: () {
//                     Navigator.pushNamed(context, '/memberprofilepage');
//                   },
//                 ),
//                 ListTile(
//                   title: Text(
//                     'Company Profile',
//                     style: TextStyle(
//                       fontFamily: 'Montserrat',
//                     ),
//                   ),
//                   selected: _selectedIndex == 7,
//                   onTap: () {
//                     Navigator.pushNamed(context, '/memberprofilepage');
//                   },
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
