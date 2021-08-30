import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class Activity extends StatefulWidget {
  const Activity({Key key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(120, 20),
                  bottomRight: Radius.elliptical(120, 20))),
          pinned: true,
          floating: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          backgroundColor: Colors.indigo[300],
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              padding: EdgeInsets.only(bottom: 20,top: 60,left: 10,right: 10),
              child: Sparkline(
                data: [0, 2, 1, 1, 0, 0, 1, -1],
                pointsMode: PointsMode.all,
                lineWidth: 10.0,
                pointSize: 8.0,
                pointColor: Colors.indigo[800],
                lineColor: Colors.indigo[50],
               
                fillGradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.indigo[800],
                    Colors.indigo[200],
                    Colors.indigo[100],
                     Colors.indigo[50]
                  ],
                ),
              ),
            ),
            title: Text("Activity"),
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context, value) {
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
    );
  }
}
