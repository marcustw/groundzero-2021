import 'package:flutter/material.dart';
import 'package:flutter_app/screens/daily_survey.dart';
import 'file:///C:/Users/Marcus/Desktop/1GrZr/flutter_app/lib/screens/profile.dart';
import 'package:flutter_app/utils/database_helper.dart';
class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Text('Oars', style: Theme.of(context).primaryTextTheme.headline4,),
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/logo.png'),
                ),
                SizedBox(height:5.0),
                Text(DatabaseHelper.name),
                InkWell(
                    child: ListTile(
                        title: Text('Profile', style: Theme.of(context).primaryTextTheme.headline1)
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Scaffold(
                          body: ProfileWidget()
                      )));
                    }
                ),
                InkWell(
                  child: ListTile(
                      title: Text('Dashboard', style: Theme.of(context).primaryTextTheme.headline1)
                  ),
                  onTap: () {

                  },
                ),
                InkWell(
                  child: ListTile(
                      title: Text('Activities', style: Theme.of(context).primaryTextTheme.headline1)
                  ),
                  onTap: () {

                  },
                ),
                InkWell(
                  child: ListTile(
                      title: Text('Daily form', style: Theme.of(context).primaryTextTheme.headline1)
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0.0,
                            insetPadding: EdgeInsets.all(30.0),
                            child: DailySurvey()
                          )
                    );
                  },
                ),
                InkWell(
                  child: ListTile(
                      title: Text('5', style: Theme.of(context).primaryTextTheme.headline1)
                  ),
                  onTap: () {

                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
