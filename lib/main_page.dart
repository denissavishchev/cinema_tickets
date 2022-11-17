import 'dart:ui';
import 'package:cinema_tickets/films_model.dart';
import 'package:cinema_tickets/target_film.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Films>>(
        future: FilmsApi.getFilms(context),
        builder: (context, snapshot) {
          final films = snapshot.data;
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            default:
              return buildMainPage(films!, context: context);
          }
        },
      ),
    );
  }

  Widget buildMainPage(List<Films> films, {required BuildContext context}) =>
      Stack(
        children: [
          Image.asset('assets/images/bg.png'),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white,
                    Colors.transparent,
                  ],
                  stops: [
                    0.5,
                    0.8,
                  ],
                )),
              ),
            ),
          ),
          PageView.builder(
              controller: PageController(viewportFraction: 0.8),
              itemCount: films.length,
              itemBuilder: (context, index) {
                final film = films[index];
                return GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          TargetFilm(film: film))),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 50, 20, 0),
                        width: 300,
                        height: 470,
                        color: Colors.transparent,
                        child: Stack(
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              )),
                              child: Image.asset(
                                'assets/images/${film.image}',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Positioned(
                              top: 430,
                              left: 75,
                              child: SizedBox(
                                width: 160,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: const [
                                    SmallBox(
                                        colorL: Color(0xffcba122),
                                        colorR: Color(0xff8a6f1d),
                                        text: 'XXI',
                                        radius: 5,),
                                    SmallBox(
                                        colorL: Color(0xffff4a4a),
                                        colorR: Color(0xffff3737),
                                        text: 'CGV',
                                        radius: 5,),
                                    SmallBox(
                                        colorL: Color(0xff454545),
                                        colorR: Color(0xff353535),
                                        text: 'Cinepolis',
                                        radius: 5,),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.transparent,
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 110,
                                ),
                                Icon(
                                  Icons.watch_later_outlined,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  film.time,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  film.name,
                                  style: const TextStyle(
                                      fontSize: 34,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SmallBox(
                                      colorL: const Color(0xfff9f9f9),
                                      colorR: const Color(0xffefefef),
                                      text: film.genre1,
                                      radius: 15,
                                      textColor: Colors.black.withOpacity(0.5),
                                      opacity: 0.2,),
                                  SmallBox(
                                    colorL: const Color(0xfff9f9f9),
                                    colorR: const Color(0xffefefef),
                                    text: film.genre2,
                                    radius: 15,
                                    textColor: Colors.black.withOpacity(0.5),
                                    opacity: 0.2,),
                                  SmallBox(
                                    colorL: const Color(0xfff9f9f9),
                                    colorR: const Color(0xffefefef),
                                    text: film.genre3,
                                    radius: 15,
                                    textColor: Colors.black.withOpacity(0.5),
                                    opacity: 0.2,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
          Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                color: Colors.grey.withOpacity(0.1),
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey.withOpacity(0.3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(Icons.movie),
                          Text(
                            'Movie',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.search,
                      size: 34,
                    ),
                    const Icon(
                      Icons.airplane_ticket_outlined,
                      size: 34,
                    ),
                    const Icon(
                      Icons.person,
                      size: 34,
                    ),
                  ],
                ),
              ))
        ],
      );
}

class SmallBox extends StatelessWidget {
  final Color colorL;
  final Color colorR;
  final String text;
  final double radius;
  final Color textColor;
  final double opacity;

  const SmallBox({
    Key? key,
    required this.colorL,
    required this.colorR,
    required this.text,
    required this.radius,
    this.textColor = Colors.white,
    this.opacity = 0.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(opacity),
                blurRadius: 0.5,
                spreadRadius: 0.5,
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            gradient: LinearGradient(colors: [
              colorL,
              colorR,
            ])),
        child: Text(
          text,
          style:
              TextStyle(color: textColor, fontWeight: FontWeight.bold),
        ));
  }
}
