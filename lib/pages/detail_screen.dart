import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_sites_app/models/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  DetailScreen({@required this.place});

  final informationTextStyle = TextStyle(
    fontFamily: 'Oxygen',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: [
                  Image.asset(
                    place.imageAsset,
                  ),
                  SafeArea(
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0, fontFamily: 'Staatliches'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.calendar_today,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          place.openDays,
                          style: informationTextStyle,
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          place.openTime,
                          style: informationTextStyle,
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.monetization_on,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          place.ticketPrice,
                          style: informationTextStyle,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Text(
                  place.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: place.imageUrls.map((url) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Image.network(url),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ));
  }
}
