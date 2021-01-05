import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qnb_profile_ui/widgets/listview_items.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              CupertinoIcons.back,
              color: Color(0xffffffff),
            ),
            Text(
              'Back',
              style: TextStyle(
                color: Color(0xffffffff),
              ),
            ),
          ],
        ),
        trailing: Text(
          'Logout',
          style: TextStyle(
            color: Color(0xffffffff),
          ),
        ),
        backgroundColor: Color(0xffB30060),
      ),
      child: SingleChildScrollView(
        child: Container(
          color: Color(0xffffffff),
          height: MediaQuery.of(context).size.height * 1.1,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/background.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image(
                        image: AssetImage('images/profile_img.jpg'),
                        height: 86,
                        width: 86,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Jane Doe',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff),
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 30, 15, 0),
                child: Text(
                  'Username/Email : test@test.com', // Get the Email/Username
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ListViewItems(
                        icon: AssetImage('icons/user_icon.png'),
                        text: 'Change Profile Picture',
                        onPressed: () {}, //Button Press Function
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      ListViewItems(
                        icon: AssetImage('icons/lock_icon.png'),
                        text: 'Change Password',
                        onPressed: () {}, //Button Press Function
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      ListViewItems(
                        icon: AssetImage('icons/block_icon.png'),
                        text: 'Suspend /Reactive / Remove cards',
                        onPressed: () {}, //Button Press Function
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      ListViewItems(
                        icon: AssetImage('icons/phone_icon.png'),
                        text: 'Configure Alerts and Notifications',
                        onPressed: () {}, //Button Press Function
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      ListViewItems(
                        icon: AssetImage('icons/question_icon.png'),
                        text: 'Change Security Questions',
                        onPressed: () {}, //Button Press Function
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      ListViewItems(
                        icon: AssetImage('icons/dots_icon.png'),
                        text: 'Quick Login Change',
                        onPressed: () {}, //Button Press Function
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                      ListViewItems(
                        icon: AssetImage('icons/ai_icon.png'),
                        text: 'Change Language',
                        onPressed: () {}, //Button Press Function
                      ),
                      Divider(
                        thickness: 1.5,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
