import 'package:findest/screens/key_Skills.dart';
import 'package:findest/widgets/my_Elevated_Button.dart';
import 'package:flutter/material.dart';
import 'package:chips_choice/chips_choice.dart';

class EducationDetails extends StatefulWidget {
  @override
  _EducationDetailsState createState() => _EducationDetailsState();
}

class _EducationDetailsState extends State<EducationDetails> {
  int tag;
  int tag1;
  int tag2;
  int tag3;

  List<String> tags = [];

  List<String> options = [
    'PHD/ Doctrate',
    'Post Graduate',
    'Graduate/DIP',
    'Class XII',
    'Below Class X',
    'Class X',
  ];

  List<String> education = [
    'B.TECH',
    'B.COM',
    'B.SC',
    'DIPLOMA',
    'BCA',
    'B.B.A/B.M.S',
  ];

  List<String> type = [
    'FULL TIME',
    'HALF TIME',
    'COMPLETED',
  ];

  List<String> specialization = [
    'AGRICULTURE',
    'AUTOMOBILE',
    'COMPUTERS',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "EDUCATION DETAILS",
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                "SELECT YOUR HIGHEST QUALITIES",
                style: Theme.of(context).textTheme.headline3,
              ),
              Container(
                child: ChipsChoice<int>.single(
                  value: tag,
                  onChanged: (val) => setState(() => tag = val),
                  choiceItems: C2Choice.listFrom<int, String>(
                    source: options,
                    value: (i, v) => i,
                    label: (i, v) => v,
                    tooltip: (i, v) => v,
                  ),
                  choiceStyle: C2ChoiceStyle(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  wrapped: true,
                ),
              ),
              tag == null || tag >= 3
                  ? Container()
                  : Column(
                      children: [
                        Text(
                          "SELECT COURSE",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Container(
                          child: ChipsChoice<int>.single(
                            value: tag1,
                            onChanged: (val) => setState(() => tag1 = val),
                            choiceItems: C2Choice.listFrom<int, String>(
                              source: education,
                              value: (i, v) => i,
                              label: (i, v) => v,
                              tooltip: (i, v) => v,
                            ),
                            choiceStyle: C2ChoiceStyle(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                            ),
                            wrapped: true,
                          ),
                        ),
                      ],
                    ),
              tag1 == null
                  ? Container()
                  : Container(
                      child: Column(
                        children: [
                          Text(
                            "SELECT TYPE",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Container(
                            child: ChipsChoice<int>.single(
                              value: tag2,
                              onChanged: (val) => setState(() => tag2 = val),
                              choiceItems: C2Choice.listFrom<int, String>(
                                source: type,
                                value: (i, v) => i,
                                label: (i, v) => v,
                                tooltip: (i, v) => v,
                              ),
                              choiceStyle: C2ChoiceStyle(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                              ),
                              wrapped: true,
                            ),
                          ),
                          Text(
                            "SPECIALIZATION",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Container(
                            child: ChipsChoice<int>.single(
                              value: tag3,
                              onChanged: (val) => setState(() => tag3 = val),
                              choiceItems: C2Choice.listFrom<int, String>(
                                source: specialization,
                                value: (i, v) => i,
                                label: (i, v) => v,
                                tooltip: (i, v) => v,
                              ),
                              choiceStyle: C2ChoiceStyle(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                              ),
                              wrapped: true,
                            ),
                          ),
                        ],
                      ),
                    ),
              Container(
                width: 300,
                child: MyElevatedButton("Next", Key_Skills()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
