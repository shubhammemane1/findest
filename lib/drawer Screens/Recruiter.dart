import 'package:findest/widgets/my_Elevated_Button.dart';
import 'package:findest/widgets/my_textField.dart';
import 'package:flutter/material.dart';

class Company {
  final Image img;
  final String name;
  final String recruit;

  Company({this.img, this.name, this.recruit});
}

class Recruiter extends StatelessWidget {
  List<Company> _listData = [
    Company(
        img: Image.asset('assets/images/mdialpha-l-box@2x.png'),
        name: "Landor",
        recruit: "13 active recruit"),
    Company(
        img: Image.asset('assets/images/fxemojicjkunifiedideograph-k@2x.png'),
        name: "Shillong co",
        recruit: "54 active recruit"),
    Company(
        img: Image.asset('assets/images/W@2x.png'),
        name: "Wells Fargo",
        recruit: "73 active recruit"),
  ];

  @override
  Widget build(BuildContext context) {
    var space = SizedBox(
      height: 20,
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text("SEARCH FOR RECRUITMENT"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "KEY SKILLS , DESIGNATIONS , COMPANIES",
                  style: Theme.of(context).textTheme.headline1,
                ),
                space,
                Text(
                  "TYPE YOUR SKILLS",
                  style: Theme.of(context).textTheme.headline3,
                ),
                space,
                MyTextField(
                  "Eg . Sales , Marketing , BPO , Inbound, OutBound",
                ),
                space,
                MyTextField(
                  "Locations",
                ),
                space,
                Center(
                  child: Container(
                    width: 300,
                    child: MyElevatedButton("Search", null),
                  ),
                ),
                space,
                Text(
                  "RECRUIT IN COMPANIES",
                  style: Theme.of(context).textTheme.headline1,
                ),
                space,
                GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: _listData.length,
                    itemBuilder: (ctx, i) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2,
                              color: Theme.of(context).primaryColor,
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _listData[i].img,
                            Text(_listData[i].name),
                            Text(_listData[i].recruit)
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
