import 'package:chat_app/chaht_screen.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavouriteContacts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Padding(
      padding: const EdgeInsets.symmetric( vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, ),
             child : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Favourite Contacts', style: TextStyle(color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                    ),
                    iconSize: 30.0,
                    color: Colors.black,
                    onPressed: (){

                    },
                  )
                ],
              )
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10,),
              scrollDirection:Axis.horizontal ,
              itemCount: favourites.length,
            itemBuilder: (BuildContext context , int index ) {
                return GestureDetector(
                  onTap: () => Navigator.push(context,
                  MaterialPageRoute(
                    builder: (_) => ChatScreen(
                      user: favourites[index],
                    )
                  )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(radius: 35.0,
                          backgroundImage: AssetImage(favourites[index].imageurl),
                        ),
                        SizedBox(height: 6.0),
                        Text(favourites[index].name, style: TextStyle (color: Colors.black , fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        )),

                      ],
                    ),
                  ),
                );
            }
            ),
          )
        ],
      ),
    );
  }

}