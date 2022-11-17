import 'package:cinema_tickets/films_model.dart';
import 'package:cinema_tickets/main_page.dart';
import 'package:cinema_tickets/seats_page.dart';
import 'package:flutter/material.dart';

class TargetFilm extends StatelessWidget {
  final Films film;

  const TargetFilm({Key? key, required this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 450,
                child: Image.asset(
                  'assets/images/${film.image}',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
              Positioned(
                top: 40,
                left: 25,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  child: IconButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const MainPage())),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 20,
                      )),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.grey.withOpacity(0.3),
            child: SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const SmallBox(
                    colorL: Color(0xffcba122),
                    colorR: Color(0xff8a6f1d),
                    text: 'XXI',
                    radius: 5,
                  ),
                  const SmallBox(
                    colorL: Color(0xffff4a4a),
                    colorR: Color(0xffff3737),
                    text: 'CGV',
                    radius: 5,
                  ),
                  const SmallBox(
                    colorL: Color(0xff454545),
                    colorR: Color(0xff353535),
                    text: 'Cinepolis',
                    radius: 5,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IMDB',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        film.imdb,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '(${film.reviews} reviews)',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color(0xfff2c94c),
                          ),
                          Text(
                            film.rating,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallBox(
                  colorL: const Color(0xfff9f9f9),
                  colorR: const Color(0xffefefef),
                  text: film.genre1,
                  radius: 15,
                  textColor: Colors.black.withOpacity(0.5),
                  opacity: 0.2,
                ),
                SmallBox(
                  colorL: const Color(0xfff9f9f9),
                  colorR: const Color(0xffefefef),
                  text: film.genre2,
                  radius: 15,
                  textColor: Colors.black.withOpacity(0.5),
                  opacity: 0.2,
                ),
                SmallBox(
                  colorL: const Color(0xfff9f9f9),
                  colorR: const Color(0xffefefef),
                  text: film.genre3,
                  radius: 15,
                  textColor: Colors.black.withOpacity(0.5),
                  opacity: 0.2,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            film.name,
            style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          Text(
            film.time,
            style: TextStyle(
                color: Colors.black.withOpacity(
              0.6,
            )),
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Director: ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 15),
                  ),
                  Text(
                    film.director,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Writer: ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 15),
                  ),
                  Text(
                    film.writer,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  film.description,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withOpacity(0.3),
                child: Center(
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const SeatsPage())),
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 65, vertical: 10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xff183346),
                      ),
                      child: const Text(
                        'Buy Ticket',
                        style: TextStyle(color: Color(0xffefc64c), fontSize: 22),
                      ),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
