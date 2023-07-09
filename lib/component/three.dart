import 'package:flutter/material.dart';

//enum Threeberth  {}
class Threeberth extends StatelessWidget {
  final int i;
  final int? finding;
  final bool? isselected;
  const Threeberth({super.key, required this.i, this.finding, this.isselected = false});

  @override
  Widget build(BuildContext context) {
   // const double boaderwidth = 8;
    const double heightboader = 40;
    const double widthboader = 8;
    const double heightcard = 70;
    const double widthcard = 75;
    return i.isEven
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
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
                      color: isselected != null && isselected!
                          ? finding == i
                              ? const Color.fromRGBO(53, 129, 211, 1)
                              : const Color.fromARGB(255, 206, 234, 255)
                          : const Color.fromARGB(255, 206, 234, 255),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "LOWER",
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 12,
                              color: isselected != null && isselected!
                                  ? finding == i
                                      ? Colors.white
                                      : const Color.fromRGBO(53, 129, 211, 1)
                                  : const Color.fromRGBO(53, 129, 211, 1),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          i.toString(),
                          style: TextStyle(
                              color: isselected != null && isselected!
                                  ? finding == i
                                      ? Colors.white
                                      : const Color.fromRGBO(53, 129, 211, 1)
                                  : const Color.fromRGBO(53, 129, 211, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: heightcard,
                    width: widthcard,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(13), topRight: Radius.circular(13)),
                      color: isselected != null && isselected!
                          ? finding == i + 1
                              ? const Color.fromRGBO(53, 129, 211, 1)
                              : const Color.fromARGB(255, 206, 234, 255)
                          : const Color.fromARGB(255, 206, 234, 255),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "MIDDLE",
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 12,
                              color: isselected != null && isselected!
                                  ? finding == i + 1
                                      ? Colors.white
                                      : const Color.fromRGBO(53, 129, 211, 1)
                                  : const Color.fromRGBO(53, 129, 211, 1),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          (i + 1).toString(),
                          style: TextStyle(
                              color: isselected != null && isselected!
                                  ? finding == i + 1
                                      ? Colors.white
                                      : const Color.fromRGBO(53, 129, 211, 1)
                                  : const Color.fromRGBO(53, 129, 211, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: heightcard,
                    width: widthcard,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(13), topRight: Radius.circular(13)),
                      color: isselected != null && isselected!
                          ? finding == i + 2
                              ? const Color.fromRGBO(53, 129, 211, 1)
                              : const Color.fromARGB(255, 206, 234, 255)
                          : const Color.fromARGB(255, 206, 234, 255),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "UPPER",
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 12,
                              color: isselected != null && isselected!
                                  ? finding == i + 2
                                      ? Colors.white
                                      : const Color.fromRGBO(53, 129, 211, 1)
                                  : const Color.fromRGBO(53, 129, 211, 1),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          (i + 2).toString(),
                          style: TextStyle(
                              color: isselected != null && isselected!
                                  ? finding == i + 2
                                      ? Colors.white
                                      : const Color.fromRGBO(53, 129, 211, 1)
                                  : const Color.fromRGBO(53, 129, 211, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
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
                width: 2 * widthboader + 3 * widthcard + 4,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 128, 203, 255),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(33), bottomRight: Radius.circular(33))),
              ),
              const SizedBox(
                height: 2,
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                height: widthboader,
                width: 2 * widthboader + 3 * widthcard + 4,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 128, 203, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(33), topRight: Radius.circular(33))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: heightboader,
                    width: widthboader,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 128, 203, 255),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(33), bottomRight: Radius.circular(33))),
                  ),
                  Container(
                    height: heightcard,
                    width: widthcard,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(13), bottomRight: Radius.circular(13)),
                      color: isselected != null && isselected!
                          ? finding == i
                              ? const Color.fromRGBO(53, 129, 211, 1)
                              : const Color.fromARGB(255, 206, 234, 255)
                          : const Color.fromARGB(255, 206, 234, 255),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "LOWER",
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 12,
                              color: isselected != null && isselected!
                                  ? finding == i
                                      ? Colors.white
                                      : const Color.fromRGBO(53, 129, 211, 1)
                                  : const Color.fromRGBO(53, 129, 211, 1),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          i.toString(),
                          style: TextStyle(
                              color: isselected != null && isselected!
                                  ? finding == i
                                      ? Colors.white
                                      : const Color.fromRGBO(53, 129, 211, 1)
                                  : const Color.fromRGBO(53, 129, 211, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: heightcard,
                    width: widthcard,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(13), bottomRight: Radius.circular(13)),
                      color: isselected != null && isselected!
                          ? finding == i + 1
                              ? const Color.fromRGBO(53, 129, 211, 1)
                              : const Color.fromARGB(255, 206, 234, 255)
                          : const Color.fromARGB(255, 206, 234, 255),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "MIDDLE",
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 12,
                              color: isselected != null && isselected!
                                  ? finding == i + 1
                                      ? Colors.white
                                      : const Color.fromRGBO(53, 129, 211, 1)
                                  : const Color.fromRGBO(53, 129, 211, 1),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          (i + 1).toString(),
                          style: TextStyle(
                              color: isselected != null && isselected!
                                  ? finding == i + 1
                                      ? Colors.white
                                      : const Color.fromRGBO(53, 129, 211, 1)
                                  : const Color.fromRGBO(53, 129, 211, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: heightcard,
                    width: widthcard,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(13), bottomRight: Radius.circular(13)),
                      color: isselected != null && isselected!
                          ? finding == i + 2
                              ? const Color.fromRGBO(53, 129, 211, 1)
                              : const Color.fromARGB(255, 206, 234, 255)
                          : const Color.fromARGB(255, 206, 234, 255),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "UPPER",
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 12,
                              color: isselected != null && isselected!
                                  ? finding == i + 2
                                      ? Colors.white
                                      : const Color.fromRGBO(53, 129, 211, 1)
                                  : const Color.fromRGBO(53, 129, 211, 1),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          (i + 2).toString(),
                          style: TextStyle(
                              color: isselected != null && isselected!
                                  ? finding == i + 2
                                      ? Colors.white
                                      : const Color.fromRGBO(53, 129, 211, 1)
                                  : const Color.fromRGBO(53, 129, 211, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
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
                            bottomLeft: Radius.circular(33), bottomRight: Radius.circular(33))),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
            ],
          );
  }
}
