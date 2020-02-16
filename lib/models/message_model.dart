

import 'package:chat_app/models/user_model.dart';

class Message{
final User sender;
final String time;
final String text;
final bool isLiked;
final bool unread;

Message({
  this.sender,
  this.time,
  this.text,
  this.unread,
  this.isLiked,
});

}

final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageurl:'assets/image.jpg',
);

final User usman = User(
    id : 1,
    name : 'Usman',
    imageurl: 'assets/ussi.jpg'
);



final User ishaq = User(
id : 2,
name : 'Ishaq',
imageurl: 'assets/sir.jpg',
);

final User jannat = User(
id : 3,
name : 'Jannat',
imageurl: 'assets/jannat.jpg',
);

final User usama = User(
id : 4,
name : 'Usama',
imageurl: 'assets/usmana.jpg',
);

final User rafia = User(
id : 5,
name : 'Rafia',
imageurl: 'assets/rafia.jpg',
);

final User anwar = User(
id : 6,
name : 'Anwar',
imageurl: 'assets/anwar.jpg',
);

List<User> favourites = [usman, ishaq, jannat, usama, rafia, anwar];

List<Message> chats = [
  Message(
    sender: usman,
    time: '5:30',
    text: 'Hey How are You?',
    isLiked: false,
    unread: true,
  ),

  Message(
    sender: ishaq,
    time: '2:30',
    text: 'WhatsUp guys ?',
    isLiked: false,
    unread: true,
  ),

  Message(
    sender: rafia,
    time: '2:00',
    text: 'Are you there ?',
    isLiked: false,
    unread: false,
  ),

  Message(
    sender: anwar,
    time: '10:00',
    text: 'Lets go for party',
    isLiked: false,
    unread: false,
  ),

  Message(
    sender: usama,
    time: '12:00',
    text: 'kaha mar gaye tm log',
    isLiked: false,
    unread: true,
  ),

  Message(
    sender: jannat,
    time: '3:00',
    text: 'Wanna go for Date ? ',
    isLiked: false,
    unread: false,
  )
];

List<Message> messages = [
 Message(
   sender: ishaq,
   time: '2:30',
   text: 'WhatsUp guys ?',
   isLiked: true,
   unread: true,
 ),
   Message(
     sender: currentUser,
     time: '2:31',
     text: 'Doing work.  Whats About You ?',
     isLiked: false,
     unread: true,
   ),
  Message(
    sender: ishaq,
    time: '2:31',
    text: 'Nothing Bro ?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:33',
    text: 'Where are you right now',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ishaq,
    time: '2:34',
    text: ' Coming Office',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:35',
    text: 'Ok waiting for you..',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ishaq,
    time: '2:39',
    text: ' Sure',
    isLiked: false,
    unread: true,
  ),
];








