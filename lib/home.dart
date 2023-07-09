import 'package:flutter/material.dart';
import 'package:seat_finder/component/side.dart';
import 'package:seat_finder/component/three.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController searchController = TextEditingController();
  bool isactive = false;
  bool issideselected = false;
  int? indx;
  int? pos;
  @override
  void initState() {
    searchController.addListener(() {
      if (searchController.text.isEmpty) {
        if (isactive) {
          // indx = 0;
          // issideselected = false;
          // int? i = int.tryParse(searchController.text);

          // if (searchController.text.isNotEmpty && i != null) {
          //   if (i % 8 == 0 || (i + 1) % 8 == 0) {
          //     issideselected = true;
          //     indx = i ~/ 4;
          //   } else {
          //     indx = (i ~/ 4).toInt() + 1;

          //     pos = (i).toInt();
          //   }
          // }
          setState(() {
            isactive = false;
          });
        }
      } else {
        if (isactive == false) {
          // indx = 0;
          // issideselected = false;
          // int? i = int.tryParse(searchController.text);

          // if (searchController.text.isNotEmpty && i != null) {
          //   if (i % 8 == 0 || (i + 1) % 8 == 0) {
          //     issideselected = true;
          //     indx = i ~/ 4;
          //   } else {
          //     indx = (i ~/ 4).toInt() + 1;

          //     pos = (i).toInt();
          //   }
          // }
          setState(() {
            isactive = true;
          });
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        const Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '  Seat Finder',
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Color.fromARGB(255, 128, 203, 255),
                  fontSize: 42,
                  fontFamily: "Schyler",
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        //  Spacer(),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Stack(alignment: AlignmentDirectional.centerEnd, children: [
                TextField(
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 128, 203, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.start,
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: "Enter seat Number...",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(205, 128, 203, 255),
                        fontSize: 20,
                        fontFamily: "Schyler",
                        fontWeight: FontWeight.bold),
                    constraints: const BoxConstraints.expand(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: Color.fromARGB(255, 128, 203, 255), width: 5)),
                    disabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 128, 203, 255), width: 15)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: Color.fromARGB(255, 128, 203, 255), width: 5)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: Color.fromARGB(255, 128, 203, 255), width: 5)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    indx = null;
                    pos = null;
                    issideselected = false;
                    int? i = int.tryParse(searchController.text);

                    if (searchController.text.isNotEmpty && i != null) {
                      if (i % 8 == 0 || (i + 1) % 8 == 0) {
                        setState(() {
                          issideselected = true;
                          indx = i ~/ 4;
                        });
                      } else {
                        setState(() {
                          indx = (i ~/ 4).toInt() + 1;
                          pos = (i).toInt();
                        });
                      }
                    }
                  },
                  child: Container(
                    height: double.maxFinite,
                    width: 110,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: isactive
                            ? const Color.fromARGB(255, 128, 203, 255)
                            : const Color.fromRGBO(216, 216, 216, 1),
                        borderRadius: BorderRadius.circular(13)),
                    child: const Text(
                      "Find",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: "Schyler",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ]),
            )),
        Expanded(
          flex: 12,
          child: ListView.builder(
            itemBuilder: (context, index) {
              debugPrint(index.toString());
              if (indx != null && index + 1 == indx) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Threeberth(
                      i: 1 + 3 * ((index + 1) ~/ 2) + 5 * ((index) ~/ 2),
                      isselected: true,
                      finding: pos,
                    ),
                    Sideseat(
                        isslected: issideselected,
                        i: (index + 1).isEven
                            ? 1 + 3 * ((index + 1) ~/ 2) + 5 * ((index) ~/ 2) + 4
                            : 1 + 3 * ((index + 1) ~/ 2) + 5 * ((index) ~/ 2) + 6)
                  ],
                );
              } else {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Threeberth(i: 1 + 3 * ((index + 1) ~/ 2) + 5 * ((index) ~/ 2)),
                    Sideseat(
                        i: (index + 1).isEven
                            ? 1 + 3 * ((index + 1) ~/ 2) + 5 * ((index) ~/ 2) + 4
                            : 1 + 3 * ((index + 1) ~/ 2) + 5 * ((index) ~/ 2) + 6)
                  ],
                );
              }
            },
          ),
        ),
      ],
    )));
  }
}
