import 'package:findest/drawer%20Screens/Recruiter.dart';
import 'package:findest/drawer%20Screens/filter.dart';
import 'package:findest/drawer%20Screens/history.dart';
import 'package:findest/drawer%20Screens/jobSearch.dart';
import 'package:findest/drawer%20Screens/recruitment_comm.dart';
import 'package:findest/drawer%20Screens/savedJobs.dart';
import 'package:findest/widgets/my_Elevated_Button.dart';
import 'package:flutter/material.dart';

class Setting {
  final String profiles;
  final Widget function;

  Setting({this.profiles, this.function});
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int index = 0;
  bool drawer = false;

  List<Setting> settingList = [
    Setting(profiles: "Search Jobs", function: JobSearch()),
    Setting(profiles: "Appied Jobs", function: History()),
    Setting(profiles: "Saved Jobs", function: SavedJobs()),
    Setting(profiles: "Search Recruiters", function: Recruiter()),
    Setting(
        profiles: "Recruitment Communications", function: RecruitmentComm()),
    Setting(profiles: "Chat For Help", function: null),
  ];
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var title = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 25,
    );
    var title1 = TextStyle(
      color: Colors.white,
      fontSize: 20,
    );
    var title2 = TextStyle(
      color: Colors.white,
      fontSize: 15,
    );
    var dTitle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 25,
    );
    var dTitle1 = TextStyle(
      color: Colors.black54,
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: "Home",
              activeIcon: Icon(
                Icons.home,
                color: Theme.of(context).primaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.send,
                color: Colors.grey,
              ),
              label: "messages",
              activeIcon: Icon(
                Icons.send,
                color: Theme.of(context).primaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    if (drawer == false)
                      drawer = true;
                    else
                      drawer == false;
                  });
                },

                child: Icon(Icons.settings),
                // color: Colors.grey,
              ),
              label: "setting",
              activeIcon: Icon(
                Icons.settings,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: screenHeight * 0.25,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Zackky Johnson",
                            style: title,
                          ),
                          Text(
                            "Student At Howward",
                            style: title1,
                          ),
                          Text(
                            "San Francsico",
                            style: title2,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "80% Profile Completed",
                            style: title2,
                          ),
                          Container(
                            height: 3,
                            width: 180,
                            color: Colors.grey,
                            child: Container(
                              height: 1,
                              width: 1,
                              color: Colors.green,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            maxRadius: 50,
                            child: Icon(
                              Icons.person,
                              size: 50,
                            ),
                          ),
                          Text(
                            "LAST UPDATED TODAY",
                            style: Theme.of(context).textTheme.headline4,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: screenWidth - 80,
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "ADD PREFEREED JOBS",
                            style: dTitle,
                          ),
                          Text(
                            "Add your desired jobs role would you like to apply for",
                            style: dTitle1,
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: MyElevatedButton("UPDATE", Filter()),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.15,
                    width: screenWidth - 80,
                    child: Card(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "YOUR PROFILE PERFORMANCE",
                          style: dTitle1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "20",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 35),
                                ),
                                Text(
                                  "PROFILE VISITS",
                                  style: dTitle1,
                                )
                              ],
                            ),
                            Container(
                              width: 1,
                              height: 25,
                              color: Colors.black54,
                            ),
                            Column(
                              children: [
                                Text(
                                  "00",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 35),
                                ),
                                Text(
                                  "RECRUITAR VISITS",
                                  style: dTitle1,
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: screenHeight * 0.19,
                    child: Card(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "02",
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 35),
                              ),
                              Text(
                                "NEW RECOMMENDED JOBS",
                                style: dTitle1,
                              )
                            ],
                          ),
                          Text(
                            "Software Programmer Trainee - Only Female",
                            style: dTitle1,
                          ),
                          Container(
                            height: 2,
                            width: screenWidth - 70,
                            color: Colors.grey,
                          ),
                          Row(
                            children: [
                              Text(
                                "00",
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 35),
                              ),
                              Text(
                                "JOBS SAVED",
                                style: dTitle1,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            drawer == false
                ? Container()
                : Container(
                    width: screenWidth / 1.5,
                    color: Theme.of(context).primaryColor,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "SETTINGS",
                              style: title,
                            ),
                            Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: settingList.length,
                          itemBuilder: (ctx, i) {
                            return Container(
                              padding: EdgeInsets.only(top: 15, left: 15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (ctx) =>
                                              settingList[i].function));
                                },
                                child: Text(
                                  settingList[i].profiles,
                                  style: title2,
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
