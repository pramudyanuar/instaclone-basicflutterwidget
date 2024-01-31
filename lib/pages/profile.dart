import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late int _selectedIndex;

  @override
  void initState() {
    _selectedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black, 
        title: Text('nabatah_',
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.plus_square,
            color: Colors.white,
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(CupertinoIcons.line_horizontal_3,
            color: Colors.white,
            ),
            onPressed: (){},
          ),
        ],
      ),
      body: ListView(
        children: [ 
          ProfilePicture(),
          SizedBox(height: 5),
          ProfileBio(),
          SizedBox(height: 5),
          ProfileStoryHighlights(),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 123,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                      print(_selectedIndex);
                    });
                  },
                  icon: Icon(Icons.grid_on, color: Colors.white, size: 30,)
                ),
              ),
              Container(
                height: 50,
                width: 123,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                      print(_selectedIndex);
                    });
                  },
                  icon: Icon(Icons.video_collection_outlined, color: Colors.white, size: 30,)
                ),
              ),
              Container(
                height: 50,
                width: 123,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                      print(_selectedIndex);
                    });
                  },
                  icon: Icon(Icons.card_travel, color: Colors.white, size: 30,)
                ),
              ),
            ],
          ),
          Container(
            child: screenView[_selectedIndex],
          ),
        ],
      )
    );
  }
}

List screenView = [
  ProfilePost(),
  ProfileReels(),
  TaggedPost(),
];


class TaggedPost extends StatelessWidget {
  const TaggedPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context,index){
        return Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/id/${index+120}/200/300"),
              fit: BoxFit.cover,
            ),
          ),
        );
      }
    );
  }
}



class ProfileReels extends StatelessWidget {
  const ProfileReels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        childAspectRatio: 1/2
      ),
      itemBuilder: (context,index){
        return Container(
          height: 250,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/id/${index+300}/200/300"),
              fit: BoxFit.cover,
            ),
          ),
          child: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 50,
            )
        );
      }
    );
  }
}

class ProfilePost extends StatelessWidget {
  const ProfilePost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context,index){
        return Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/id/${index+221}/200/300"),
              fit: BoxFit.cover,
            ),
          ),
        );
      }
    );
  }
}

// class TabView extends StatefulWidget{
//   const TabView({
//     super.key,
//   });

//   @override
//   State<TabView> createState() => _TabViewState();
// }

// class _TabViewState extends State<TabView> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Container(
//           height: 50,
//           width: 123,
//           child: IconButton(
//             onPressed: () {
//               setState(() {
//                 _selectedIndex = 0;
//                 print(_selectedIndex);
//               });
//             },
//             icon: Icon(Icons.grid_on, color: Colors.white, size: 30,)
//           ),
//         ),
//         Container(
//           height: 50,
//           width: 123,
//           child: IconButton(
//             onPressed: () {
//               setState(() {
//                 _selectedIndex = 1;
//                 print(_selectedIndex);
//               });
//             },
//             icon: Icon(Icons.video_collection_outlined, color: Colors.white, size: 30,)
//           ),
//         ),
//         Container(
//           height: 50,
//           width: 123,
//           child: IconButton(
//             onPressed: () {
//               setState(() {
//                 _selectedIndex = 2;
//                 print(_selectedIndex);
//               });
//             },
//             icon: Icon(Icons.card_travel, color: Colors.white, size: 30,)
//           ),
//         ),
//       ],
//     );
//   }
// }

class ProfileStoryHighlights extends StatelessWidget {
  const ProfileStoryHighlights({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 86,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage("https://picsum.photos/seed/125/200/300"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text("Nganjuk",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                  )
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage("https://picsum.photos/seed/900/200/300"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text("Thailand",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                  )
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage("https://picsum.photos/seed/213/200/300"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text("Russia",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                  )
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage("https://picsum.photos/seed/7/200/300"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text("Flora<3",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                  )
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage("https://picsum.photos/seed/254/200/300"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text("Singapore",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                  )
                ],
              ),
              SizedBox(width: 15),
              Column(
                children : [               
                  Icon(Icons.add_circle_outline, color: Colors.white, size: 65,),
                  Text("Add Highlight",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                  )
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Row(
        children: [
          SizedBox(width: 10),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage("https://picsum.photos/seed/123/200/300"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 40),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text('Posts',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              ),
            ],
          ),
          SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('155',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text('Followers',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              ),
            ],
          ),
          SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('87',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text('Following',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileBio extends StatelessWidget {
  const ProfileBio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Yanuar Eka",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text("Flutter Developer",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
            ),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
            ),
            SizedBox(height: 6),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromARGB(255, 33, 28, 28),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text("Professional Dashboard",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text("471 accounts reached in the last 30 days",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                    )
                ]),
              ),
            ),
            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 30,
                  width: 175,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text('Edit Profile'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 33, 28, 28)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Colors.black38),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 175,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text('Share Profile'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 33, 28, 28)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Colors.black38),
                          
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
    
          ],
        ),
      ),
    );
  }
}