import 'package:flutter/material.dart';

class HomeSub extends StatefulWidget {
  const HomeSub({Key key}) : super(key: key);

  @override
  _HomeSubState createState() => _HomeSubState();
}

class _HomeSubState extends State<HomeSub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            onPressed: () {}),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.white,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildBuilderDelegate((context, value) {
            if (value == 0) {
              return Center(
                heightFactor: 1.5,
                child: Text(
                  "RP 1.932234343",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              );
            }
            if (value == 1) {
              return Center(
                child: Text("-78 Rp Today",
                    style: TextStyle(fontSize: 18, color: Colors.grey)),
              );
            }
            if (value == 2) {
              return Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                child: Text("Last Transactions",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              );
            }
            if (value == 3) {
              return Container(
                margin: EdgeInsets.only(left: 20, top: 12),
                child: Text("Today",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              );
            }
            return ListTile(
                onTap: () {},
                onLongPress: () {},
                leading: Container(
                  decoration: BoxDecoration(
                      color: Colors.indigo[200],
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.car_rental,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Car shop",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.indigo),
                ),
                subtitle: Text("Transport"),
                trailing: Container(
                  child: Text(
                    "- Rp 18000",
                    style: TextStyle(color: Colors.indigo),
                  ),
                  margin: EdgeInsets.only(right: 10),
                ));
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigo[300],
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
