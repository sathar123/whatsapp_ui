

import 'package:flutter/material.dart';

class Chat_view extends StatelessWidget {
  const Chat_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List names = [
      'Dawn Christensen',
      'Steven Wolf',
      'Tammy Williams',
      'Christina Martin',
      'Monica Lewis',
      'Jennifer Brown',
      'Travis Willis',
      'Sean Leonard',
      'Jim Molina',
      'David Charles',
      'Stephanie Hamilton',
      'Eric Keller',
      'Amanda Cantu',
      'Carrie Mueller',
      'Anthony Johnson',
      'Johnny Bender',
      'Travis Oliver',
      'Ricky Tran',
      'John Allen',
      'Spencer Krueger',

    ];
    var imgnet = [
      'https://i.pinimg.com/originals/3e/fd/7b/3efd7b3dbe7dbc36b0cd692d21665202.jpg',
      'https://play-lh.googleusercontent.com/i1qvljmS0nE43vtDhNKeGYtNlujcFxq72WAsyD2htUHOac57Z9Oiew0FrpGKlEehOvo=w240-h480-rw',
      'https://1.bp.blogspot.com/-92G914OYmFs/X_62UajpusI/AAAAAAAABn0/gndITrE2iooHWGcgPkiMxuDN6YAajLiRgCLcBGAsYHQ/s719/IMG-20210111-WA0000%2B1%2560.jpg',
      'https://wallpaperaccess.com/full/2213424.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSehv_Jp9-EQodLx8jYkIcheKJvGg7k7k3V6w&usqp=CAU',
      'https://1.bp.blogspot.com/-arGwhEe2rG0/YTuyVzbS2NI/AAAAAAAAuUU/tKgGGBXs4Ig1kDG63eB8R_CKppQ8HY71QCLcBGAsYHQ/s920/Best-Profile-Pic-For-Boys%2B%25281%2529.png',
      'https://images.saymedia-content.com/.image/t_share/MTc4NTU4Mzk3MjU0MjE1NDk2/cool-instagram-names.jpg',
      'https://www.techgrama.in/wp-content/uploads/2021/06/dp-for-instagram-for-boy-3.jpg',
      'https://cdn.mirchistatus.com/siteuploads/images/images24/11784/thumb/alone-sad-boy-dp-for-fb-insta-profile-pic_xlrg.jpg?time=1581421891',
      'https://smileworld.in/wp-content/uploads/2020/06/Sad-Alone-Boy-DP-Display-Picture-Free-Download.jpg',
      'https://i.pinimg.com/originals/3e/fd/7b/3efd7b3dbe7dbc36b0cd692d21665202.jpg',
      'https://play-lh.googleusercontent.com/i1qvljmS0nE43vtDhNKeGYtNlujcFxq72WAsyD2htUHOac57Z9Oiew0FrpGKlEehOvo=w240-h480-rw',
      'https://1.bp.blogspot.com/-92G914OYmFs/X_62UajpusI/AAAAAAAABn0/gndITrE2iooHWGcgPkiMxuDN6YAajLiRgCLcBGAsYHQ/s719/IMG-20210111-WA0000%2B1%2560.jpg',
      'https://wallpaperaccess.com/full/2213424.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSehv_Jp9-EQodLx8jYkIcheKJvGg7k7k3V6w&usqp=CAU',
      'https://1.bp.blogspot.com/-arGwhEe2rG0/YTuyVzbS2NI/AAAAAAAAuUU/tKgGGBXs4Ig1kDG63eB8R_CKppQ8HY71QCLcBGAsYHQ/s920/Best-Profile-Pic-For-Boys%2B%25281%2529.png',
      'https://images.saymedia-content.com/.image/t_share/MTc4NTU4Mzk3MjU0MjE1NDk2/cool-instagram-names.jpg',
      'https://www.techgrama.in/wp-content/uploads/2021/06/dp-for-instagram-for-boy-3.jpg',
      'https://cdn.mirchistatus.com/siteuploads/images/images24/11784/thumb/alone-sad-boy-dp-for-fb-insta-profile-pic_xlrg.jpg?time=1581421891',
      'https://smileworld.in/wp-content/uploads/2020/06/Sad-Alone-Boy-DP-Display-Picture-Free-Download.jpg',
    ];

    return Scaffold(
      body: Container(

          child: ListView.builder(
            padding: EdgeInsets.zero,
              itemCount: names.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(radius: 25,
                  backgroundImage: NetworkImage(imgnet[index]),),
                  title: Text(names[index]),
                  subtitle: Text('Hello'),
                  trailing: Text('4:23 PM',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                );
              }
              )
      ),

    );
  }
}
