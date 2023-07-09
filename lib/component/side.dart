import 'package:flutter/material.dart';

class Sideseat extends StatelessWidget {
  final int i;
  final bool? isslected;
  const Sideseat({
    Key? key,
    required this.i,
    this.isslected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  //  const double boaderwidth = 8;
    const double heightboader = 40;
    const double widthboader = 8;
    const double heightcard = 70;
    const double widthcard = 75;
    return RotatedBox(
      quarterTurns: i.isEven ? 0 : -2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: heightboader,
                width: widthboader,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 128, 203, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(33), topRight: Radius.circular(33))),
              ),
              Container(
                height: heightcard,
                width: widthcard,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(13), topRight: Radius.circular(13)),
                  color: isslected!
                      ? const Color.fromRGBO(53, 129, 211, 1)
                      : const Color.fromARGB(255, 206, 234, 255),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RotatedBox(
                      quarterTurns: i.isEven ? 0 : -2,
                      child: Text(
                        i.isEven ? "SIDE UPPER" : "SIDE LOWER",
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 12,
                            color: isslected! ? Colors.white : const Color.fromRGBO(53, 129, 211, 1),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: i.isEven ? 0 : -2,
                      child: Text(
                        i.toString(),
                        style: TextStyle(
                            color: isslected! ? Colors.white : const Color.fromRGBO(53, 129, 211, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: heightboader,
                width: widthboader,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 128, 203, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(33), topRight: Radius.circular(33))),
              ),
            ],
          ),
          Container(
            height: widthboader,
            width: 2 * widthboader + widthcard,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 128, 203, 255),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(33), bottomRight: Radius.circular(33))),
          ),
        ],
      ),
    );
  }
}
