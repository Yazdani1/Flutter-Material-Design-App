import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      appBar: new AppBar(
        title: new Text("Material Design App"),
        backgroundColor: Colors.purple,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: ()=>debugPrint("search button")
          ),
          new IconButton(
              icon: new Icon(Icons.add),
              onPressed: ()=>debugPrint("Add button")
          )
        ],
      ),//appbar end
      
        //drawer start here
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            
            new UserAccountsDrawerHeader(
                accountName: new Text("Yadc"), 
                accountEmail: new Text("aa@gmail.com"),
              decoration: new BoxDecoration(
                color: Colors.purple
              ),
            ),
            new ListTile(
              title: new Text("First Page"),
              leading: new Icon(Icons.print,color: Colors.orange,),
            ),
            new ListTile(
              title: new Text("Second Page"),
              leading: new Icon(Icons.message,color: Colors.amber,),
            ),
            new ListTile(
              title: new Text("Third Page"),
              leading: new Icon(Icons.clear,color: Colors.purple,),
            ),
            new Divider(
              height: 10.0,
            ),
            new ListTile(
              title: new Text("Close"),
              leading: new Icon(Icons.close),
            )
            
          ],
        ),
      ),//end drawer

      body: new ListView(
        children: <Widget>[

          new Container(
            margin: EdgeInsets.all(10.0),
            height:300.0,
            width: MediaQuery.of(context).size.width,
            child: new Card(
              elevation: 10.0,
              child: new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[

                      new Icon(Icons.album,color: Colors.orange,size: 40.0,),
                      new Padding(padding: EdgeInsets.all(10.0)),
                      new Column(
                        children: <Widget>[
                          new Text("All Message"),
                          new Padding(padding: EdgeInsets.all(10.0)),

                          new Text("600+")
                        ],
                      )

                      
                    ],
                  ),
                  new Divider(height: 10.0,color: Colors.black,),
                  new Row(
                    children: <Widget>[

                      new Icon(Icons.add,color: Colors.orange,size: 40.0,),
                      new Padding(padding: EdgeInsets.all(10.0)),
                      new Column(
                        children: <Widget>[
                          new Text("All Message"),
                          new Padding(padding: EdgeInsets.all(10.0)),

                          new Text("600+")
                        ],
                      )


                    ],
                  ),
                  new Divider(height: 10.0,color: Colors.black,),
                  new Row(
                    children: <Widget>[

                      new Icon(Icons.search,color: Colors.orange,size: 40.0,),
                      new Padding(padding: EdgeInsets.all(10.0)),
                      new Column(
                        children: <Widget>[
                          new Text("All Message"),
                          new Padding(padding: EdgeInsets.all(10.0)),

                          new Text("600+")
                        ],
                      )


                    ],
                  ),

                  new Divider(height: 10.0,color: Colors.black,),
                  new Row(
                    children: <Widget>[

                      new Icon(Icons.title,color: Colors.orange,size: 40.0,),
                      new Padding(padding: EdgeInsets.all(10.0)),
                      new Column(
                        children: <Widget>[
                          new Text("All Message"),
                          new Padding(padding: EdgeInsets.all(10.0)),

                          new Text("600+")
                        ],
                      )


                    ],
                  ),





                ],
              ),

            ),
          ),//First container end..

          new Container(
            height: 200.0,
            margin: EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width,
//            decoration: new BoxDecoration(
//              color: Colors.purple,
//              borderRadius: new BorderRadius.only(
//                bottomLeft: Radius.circular(90.0)
//              )
//            ),
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new Padding(padding: EdgeInsets.all(10.0)),
                new Image.network(
                    "https://picsum.photos/250?image=9",
                    height: 200.0,
                    width: 200.0,
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                new Image.network(
                  "https://picsum.photos/250?image=9",
                  height: 200.0,
                  width: 200.0,
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                new Image.network(
                  "https://picsum.photos/250?image=9",
                  height: 200.0,
                  width: 200.0,

                ),



                
              ],
            ),
          )

        ],
      ),

    );
  }
}

