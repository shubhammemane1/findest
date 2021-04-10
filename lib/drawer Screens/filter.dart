import 'package:flutter/material.dart';

class Company {
  final Image img;
  final String name;
  final String recruit;

  Company({this.img, this.name, this.recruit});
}

class Filter extends StatelessWidget {
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text("Filter your jobs"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lookinmg to hire faster and more affordably ?",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              "Tackle your project with us",
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(height: 50),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _listData.length,
              itemBuilder: (ctx, i) {
                return Column(
                  children: [
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).primaryColor, width: 2)),
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        leading: _listData[i].img,
                        title: Text(_listData[i].name),
                        trailing: IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (
                                  ctx,
                                ) {
                                  return Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        child: _listData[i].img,
                                      ),
                                      Text(
                                        _listData[i].name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3,
                                      ),
                                    ],
                                  );
                                });
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
