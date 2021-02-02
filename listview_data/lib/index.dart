
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class index extends StatefulWidget{
  @override
  _indexPage createState() => _indexPage();
}

//AppBar
final appBar = new AppBar(
  backgroundColor: Colors.white, //mau cua appbar
  centerTitle: true, //chinh title ra giua
  elevation: 1.0,
  leading: new Icon(Icons.camera_alt, size: 25,), //ben trai cua appbar
  title: SizedBox(
    height: 35.0,
    child: Image.asset('assets/img/instagram-logo.jpg', fit: BoxFit.contain,),),
  actions: <Widget>[
    Padding(padding: EdgeInsets.only(right: 15),
    child: Icon(Icons.near_me_sharp, size: 25,),)
  ],
);

//BottomNavigation
final bottomNav = new Container(
  color: Colors.white,
  height: 50,
  alignment: Alignment.center, //Giua cach cho cach phan tu trong container
  child: BottomAppBar(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(icon: Icon(Icons.home_filled), onPressed: null),
        IconButton(icon: Icon(Icons.search_outlined), onPressed: null),
        IconButton(icon: Icon(Icons.add_circle), onPressed: null),
        IconButton(icon: Icon(Icons.favorite_border_rounded), onPressed: null),
        IconButton(icon: Icon(Icons.account_circle_outlined), onPressed: null),
      ],
    ),
  ),
);

class _indexPage extends State<index>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: appBar,
      body: LadiHome(),
      bottomNavigationBar: bottomNav
    );
  }
}

class LadiHome extends StatefulWidget{
  @override
  _LadiIndex createState() => _LadiIndex();
}

//Title Stories
final titleStories = new Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Text('Stories', style: TextStyle(fontWeight: FontWeight.bold, ),),
    Row(
      children: <Widget>[
        Icon(Icons.play_arrow),
        Text('Watch All', style: TextStyle(fontWeight: FontWeight.bold,),)
      ],
    ),
  ],
);

//Stories account
final stories = Expanded(
    child: Padding(
      padding: EdgeInsets.only(top: 8),
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => new Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 8.0),
              ),
              index == 0 ? Positioned(
                  right: 18,
                  child: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 10.0,
                    child: Icon(Icons.add_circle,
                    size: 14,
                    color: Colors.white,),
                  )) : new Container()
            ],
          )),
    ),
);

class _LadiIndex extends State<LadiHome>{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        //Expanded(flex: 1, child: new InstaStories()),
        Flexible(child: InstaList())
      ],
    );
  }
}

class InstaList extends StatefulWidget {
  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
        child: new Container(
          margin: const EdgeInsets.all(16.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              titleStories,
              stories,
            ],
          ),
        ),
        height: deviceSize.height * 0.15,
      )
          : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                      ),
                    ),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text(
                      "imthpk",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                new IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: null,
                )
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: new Image.network(
              "https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new IconButton(
                      icon: new Icon(isPressed
                          ? Icons.favorite
                          : FontAwesomeIcons.heart),
                      color: isPressed ? Colors.red : Colors.black,
                      onPressed: () {
                        setState(() {
                          isPressed = !isPressed;
                        });
                      },
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(
                      FontAwesomeIcons.comment,
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(FontAwesomeIcons.paperPlane),
                  ],
                ),
                new Icon(FontAwesomeIcons.bookmark)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Liked by pawankumar, pk and 528,331 others",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                  ),
                ),
                new SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: new TextField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add a comment...",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child:
            Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
          )
        ],
      ),
    );
  }
}
