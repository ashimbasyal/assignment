import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeP(),
      
    );
  }
}

class HomeP extends StatefulWidget {
  HomeP({Key? key}) : super(key: key);

  @override
  _HomePState createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  int _page = 0;
  GlobalKey<State<StatefulWidget>> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width * 0.6;
    var titleList = [
      'Deuba is in a tight spot',
      'Why Gagan Thapa’s ',
      'Nepali Congress race',
      'Government team to visit ',
      'Dashain ticket pre-booking',
      'Deuba is in a tight spot',
      'Why Gagan Thapa’s ',
      'Nepali Congress race',
      'Government team to visit ',
      'Dashain ticket pre-booking',
    ];
    var desclist = [
      'The prime minister appears to have fallen into a trap with coalition partners’ strong reservations about the American programme, as US officials are due to arrive this week.',
      'Traffic police to set up 14 help desks to tell inquirers bus fares to all the districts, distribute face masks and watch over-charging vehicles.',
      'Traffic police to set up 14 help desks to tell inquirers bus fares to all the districts, distribute face masks and watch over-charging vehicles.',
      'Traffic police to set up 14 help desks to tell inquirers bus fares to all the districts, distribute face masks and watch over-charging vehicles.',
      'Traffic police to set up 14 help desks to tell inquirers bus fares to all the districts, distribute face masks and watch over-charging vehicles.',
      'Traffic police to set up 14 help desks to tell inquirers bus fares to all the districts, distribute face masks and watch over-charging vehicles.',
      'Traffic police to set up 14 help desks to tell inquirers bus fares to all the districts, distribute face masks and watch over-charging vehicles.',
      'Traffic police to set up 14 help desks to tell inquirers bus fares to all the districts, distribute face masks and watch over-charging vehicles.',
      'Traffic police to set up 14 help desks to tell inquirers bus fares to all the districts, distribute face masks and watch over-charging vehicles.',
      'Traffic police to set up 14 help desks to tell inquirers bus fares to all the districts, distribute face masks and watch over-charging vehicles.',
    ];

    var imgList = [
      'images/logo.jpg',
      'images/logo.jpg',
      'images/logo.jpg',
      'images/logo.jpg',
      'images/logo.jpg',
      'images/logo.jpg',
      'images/logo.jpg',
      'images/logo.jpg',
      'images/logo.jpg',
      'images/logo.jpg',
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60,
        items: <Widget>[
          Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.compare_arrows,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.call_split,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.perm_identity,
            size: 30,
            color: Colors.white,
          ),
        ],
        color: Colors.green,
        buttonBackgroundColor: Colors.black,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
            
          });
        },
        letIndexChange: (index) => true,
      ),
      appBar: AppBar(
        title: Text(
          'News',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            // addAutomaticKeepAlives: false,
            itemCount: imgList.length,
            // shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  height: 120,
                  width: double.infinity,
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 55,
                          height: 55,
                          child: Image.asset(imgList[index]),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  titleList[index],
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                //for spacing
                                SizedBox(
                                  height: 10,
                                ),

                                Container(
                                  width: double.infinity,
                                  child: Text(
                                    desclist[index],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
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
              );
            },
          ),
        ),
      ),
    );
  }
}

// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(home: BottomNavBar()));

// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int _page = 0;
//   GlobalKey<State<StatefulWidget>> _bottomNavigationKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: CurvedNavigationBar(
//           key: _bottomNavigationKey,
//           index: 0,
//           height: 60,
//           items: <Widget>[
//             Icon(Icons.add, size: 30),
//             Icon(Icons.list, size: 30),
//             Icon(Icons.compare_arrows, size: 30),
//             Icon(Icons.call_split, size: 30),
//             Icon(Icons.perm_identity, size: 30),
//           ],
//           color: Colors.white,
//           buttonBackgroundColor: Colors.white,
//           backgroundColor: Colors.blueAccent,
//           animationCurve: Curves.easeInOut,
//           animationDuration: Duration(milliseconds: 600),
//           onTap: (index) {
//             setState(() {
//               _page = index;
//             });
//           },
//           letIndexChange: (index) => true,
//         ),
//         body: Container(
//           color: Colors.blueAccent,
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(_page.toString(), textScaleFactor: 10.0),
//                 // ElevatedButton(
//                 //   child: Text('Go To Page of index 1'),
//                 //   onPressed: () {
//                 //     final CurvedNavigationBarState? navBarState = _bottomNavigationKey.currentState as CurvedNavigationBarState?;

//                 // },

//                 //            )
//               ],
//             ),
//           ),
//         ));
//   }
// }

class CurvedNavigationBarState {}




