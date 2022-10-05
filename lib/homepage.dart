import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var countTree = 98753;
    var o2 = 20.98;
    var co2 = 0.04;
    double width = MediaQuery. of(context). size. width;
    double height = MediaQuery. of(context). size. height;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          title: Text("Greener"),
          backgroundColor: Colors.green,
          actions: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.notifications))
          ],
        ),
        body: Container(

          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green[300],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    height: height * 0.25,
                    width: width * 0.9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          child: Center(
                            child: Text(
                              '$countTree',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Center(
                            child: Text(
                              'Total Tree\'s Planted',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green[300],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,

                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        height: height * 0.20,
                        width: width * 0.9,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              child: Center(
                                child: Text(
                                  '$o2% O2',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Center(
                                child: Text(
                                  'Produce',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        margin: const EdgeInsets.only(left: 10, right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green[300],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        height: height * 0.20,
                        width: width * 0.9,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              child: Center(
                                child: Text(
                                  '$co2% CO2',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Center(
                                child: Text(
                                  'Reduce',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  // color: Colors.tealAccent,
                  alignment: Alignment.center,
                  // child: Text("#8d4383"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   var i = 3;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Greener'),
//         backgroundColor: Colors.green,
//       ),
//       body: StaggeredGridView.countBuilder(
//           crossAxisCount: 2,
//           mainAxisSpacing: 20,
//           padding: EdgeInsets.only(left: 20, right: 20),
//           crossAxisSpacing: 20,
//           itemBuilder: (c, i){
//             return Container(
//               color: i % 2 == 0 ? Colors.black : Colors.deepOrange,
//               child: Center(
//                 child: Text(
//                   '1234',
//                   style: TextStyle(
//                     fontSize: 30,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             );
//           },
//           staggeredTileBuilder: (index){
//             return StaggeredTile.count(2, 1);
//           }),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// // import 'package:google_nav_bar/google_nav_bar.dart';
//
// class HomePage extends StatelessWidget {
//   // const Citizen_Home3({Key? key}) : super(key: key);
//   var treeCount = 47928;
//   Widget _selectedCleaning({
//     required Color color,
//     required String tittle,
//     required String subtittle
//   }){
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 10.0),
//       padding: EdgeInsets.only(left: 20),
//       height: 125,
//       width: 240,
//       decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(15.0)
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             tittle,style: TextStyle(
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//           ),
//           SizedBox(
//             height: 5,
//           ),
//           Text(
//             subtittle,
//             style: TextStyle(
//               fontSize: 19,
//               color: Colors.white70,
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget _selectedExtras({required String image, required String name}){
//     return Container(
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.0),
//           border: Border.all(color: Colors.grey, width: 2)
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             height: 60,
//             decoration: BoxDecoration(
//                 image: DecorationImage(image: AssetImage(image))
//             ),
//           ),
//           SizedBox(height: 10,),
//           Text(name, style: TextStyle(fontSize: 17),)
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green,
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: Colors.green,
//         title: Text(
//           "Greener",
//           style: TextStyle(
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         child: Container(
//           height: 800,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             // borderRadius: BorderRadius.only(
//             //   topLeft: Radius.circular(20),
//             //   topRight: Radius.circular(20)
//             // ),
//           ),
//           child: ListView(
//
//             children: [
//               // Padding(
//               //   padding: EdgeInsets.only(top: 30, left: 30),
//               //   child: Text(
//               //     "Benefits",
//               //     style: TextStyle(
//               //       fontSize: 19,
//               //       color: Colors.black87,
//               //       fontWeight: FontWeight.w500,
//               //     ),
//               //   ),
//               // ),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     left: 30,
//                     top: 30,
//                   ),
//                   child: Row(
//                     children: [
//                       _selectedCleaning(
//                           color: Colors.green,
//                           subtittle: "Total Tree's Planted",
//                           tittle: '$treeCount'
//                       ),
//                       _selectedCleaning(
//                           color: Colors.green,
//                           subtittle: "Produce",
//                           tittle: 'XX.XX% O2'
//                       ),
//                       _selectedCleaning(
//                           color: Colors.green,
//                           subtittle: "Reduce",
//                           tittle: 'XX.XX% CO2'
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 20,
//                   vertical: 30,
//                 ),
//                 child: Column(
//                   children: [
//                     Text(
//                       'Selected Extras',
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.black,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(
//                         top: 20,
//                       ),
//                       child: Container(
//                         height: 300,
//                         child: GridView.count(
//                           crossAxisCount: 2,
//                           crossAxisSpacing: 12,
//                           mainAxisSpacing: 8,
//                           childAspectRatio: 1.30,
//                           children: [
//                             _selectedExtras(
//                               image: 'img/g.jpg',
//                               name: 'AMC Team',
//                             ),
//                             _selectedExtras(
//                               image: 'img/g.jpg',
//                               name: 'Organization',
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       // bottomNavigationBar: GNav(
//       //     backgroundColor: Colors.green,
//       //     color: Colors.white,
//       //     activeColor: Colors.green,
//       //     tabBackgroundColor: Colors.grey.shade800,
//       //     gap: 4,
//       //     padding: EdgeInsets.all(16),
//       //     tabs: const [
//       //       GButton(
//       //         icon: Icons.home,
//       //       ),
//       //       GButton(
//       //         icon: Icons.park,
//       //       ),
//       //       GButton(
//       //         icon: Icons.qr_code_2,
//       //       ),
//       //       GButton(
//       //         icon: Icons.yard_outlined,
//       //       ),
//       //       GButton(
//       //         icon: Icons.account_circle_rounded,
//       //       ),
//       //     ]),
//     );
//   }
// }
