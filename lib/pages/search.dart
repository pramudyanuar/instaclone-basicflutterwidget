import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Searchbar(),
            Container(
              child: GridExplore(),
            )
          ],
        ),
      )
    );
  }
}

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10)
      ),
      height: 40,
      child: ElevatedButton(
        onPressed: (){
          print("pressed");
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[800],
          elevation: 0,
          shadowColor: Colors.transparent
        ),
        child: Row(
          children: [
            Icon(Icons.search, color: Colors.white,),
            SizedBox(width: 10),
            Text("Search", style: TextStyle(color: Colors.white),)
          ],
        ),
      )
    );
  }
}


class GridExplore extends StatelessWidget {
  const GridExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          height: 522,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  box4(),
                  bigbox()
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  bigbox(),
                  box4()
                ],
              )
            ],
          )
        );
      },
    );
  }
}

class bigbox extends StatelessWidget {
  const bigbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 130.5,
      child: Icon(Icons.play_arrow, color: Colors.white, size: 50,),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://picsum.photos/seed/${random.integer(999, min:100)}/200/300"),
          fit: BoxFit.cover,
        ),
      )
    );
  }
}

class box4 extends StatelessWidget {
  const box4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 130.5,
              width: 130.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/seed/${random.integer(999, min:100)}/200/300"),
                  fit: BoxFit.cover,
                ),
              )
            ),
            Container(
              height: 130.5,
              width: 130.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/seed/${random.integer(999, min:100)}/200/300"),
                  fit: BoxFit.cover,
                ),
              )
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 130.5,
              width: 130.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/seed/${random.integer(999, min:100)}/200/300"),
                  fit: BoxFit.cover,
                ),
              )
            ),
            Container(
              height: 130.5,
              width: 130.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/seed/${random.integer(999, min:100)}/200/300"),
                  fit: BoxFit.cover,
                ),
              )
            ),
          ],
        ),
      ],
    );
  }
}